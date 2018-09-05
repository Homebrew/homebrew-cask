cask 'butler' do
  version '4.1.23'
  sha256 '7de67e08e0bcffbdf3c5a2af73f84654b7dc5db5e95d61e42e74d863eb3d06fc'

  url 'https://manytricks.com/download/butler'
  appcast 'https://manytricks.com/butler/appcast'
  name 'Butler'
  homepage 'https://manytricks.com/butler/'

  auto_updates true

  app 'Butler.app'
end
