cask 'butler' do
  version '4.1.19'
  sha256 '68d981ceae61a8bb281b274aad49ad57ebc2033ee022a11ea3b13febafeff63f'

  url 'https://manytricks.com/download/butler'
  appcast 'http://manytricks.com/butler/butlercast.xml',
          checkpoint: 'a1f08dffa7a7797bf62c560d9a88fe4df169425e0d4d96a9bfc17de4971aeb95'
  name 'Butler'
  homepage 'https://manytricks.com/butler/'
  license :commercial

  app 'Butler.app'
end
