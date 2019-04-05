cask 'butler' do
  version '4.3'
  sha256 'b0ad27a97d0d140e17546d2734cbbd6e15282d42d69e1a00b16cba6fb6f44d4c'

  url 'https://manytricks.com/download/butler'
  appcast 'https://manytricks.com/butler/appcast'
  name 'Butler'
  homepage 'https://manytricks.com/butler/'

  auto_updates true

  app 'Butler.app'
end
