cask 'pingmenu' do
  version :latest
  sha256 :no_check

  url 'https://github.com/kalleboo/PingMenu/raw/master/PingMenu.app.zip'
  name 'PingMenu'
  homepage 'https://github.com/kalleboo/PingMenu'

  app 'PingMenu.app'
end
