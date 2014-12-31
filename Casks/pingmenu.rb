cask :v1 => 'pingmenu' do
  version :latest
  sha256 :no_check

  url 'https://github.com/kalleboo/PingMenu/raw/master/PingMenu.app.zip'
  homepage 'https://github.com/kalleboo/PingMenu'
  license :oss

  app 'PingMenu.app'
end
