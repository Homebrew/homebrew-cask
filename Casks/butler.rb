cask 'butler' do
  version '4.3.1'
  sha256 'e1e6231a6e3c812e84e2eaed6250a38f332efef32c7a034cd1f2303c4794c913'

  url 'https://manytricks.com/download/butler'
  appcast 'https://manytricks.com/butler/appcast'
  name 'Butler'
  homepage 'https://manytricks.com/butler/'

  auto_updates true

  app 'Butler.app'
end
