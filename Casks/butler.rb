cask 'butler' do
  version '4.2.2'
  sha256 '0436316a410dca02faa1e9eb276d4471193663c6184dab221295a1884e5265a7'

  url 'https://manytricks.com/download/butler'
  appcast 'https://manytricks.com/butler/appcast'
  name 'Butler'
  homepage 'https://manytricks.com/butler/'

  auto_updates true

  app 'Butler.app'
end
