cask 'butler' do
  version '4.3.2'
  sha256 'c2da20da2befe4ed4262bf77b6e6da5d1ca7449b0f7fd4af64d16cea6f4f1637'

  url 'https://manytricks.com/download/butler'
  appcast 'https://manytricks.com/butler/appcast'
  name 'Butler'
  homepage 'https://manytricks.com/butler/'

  auto_updates true

  app 'Butler.app'
end
