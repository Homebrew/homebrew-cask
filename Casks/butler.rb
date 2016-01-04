cask 'butler' do
  version '4.1.19'
  sha256 '68d981ceae61a8bb281b274aad49ad57ebc2033ee022a11ea3b13febafeff63f'

  url "https://manytricks.com/download/_do_not_hotlink_/butler#{version.gsub('.', '')}.dmg"
  name 'Butler'
  homepage 'https://manytricks.com/butler/'
  license :commercial

  app 'Butler.app'
end
