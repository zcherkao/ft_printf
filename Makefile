# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: zcherkao <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/12/03 17:34:52 by zcherkao          #+#    #+#              #
#    Updated: 2021/12/05 15:45:51 by zcherkao         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC = gcc

RM = rm -f

CFLAGS = -Wall -Wextra -Werror 

NAME = libftprintf.a

SRC = ft_printf.c \
		ft_printf_utils.c \
		ft_printf_utils2.c \

OBJS = 	$(SRC:.c=.o)

all: $(NAME)

%.o : %.c ft_printf.h
		$(CC) $(CFLAGS) -c $< -o $@

$(NAME): $(OBJS)
		ar rc $(NAME) $(OBJS)
			
clean: 
		$(RM) $(OBJS)

fclean: clean
		$(RM) $(NAME)

re: fclean $(NAME)
	
.PHONY: all clean fclean re			
