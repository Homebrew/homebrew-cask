class Doubanradio < Cask
  url 'http://douban.fm/desktop_mac'
  appcast 'http://douban.fm/static/radio/desktop/doubanradio-appcast.xml'
  homepage 'http://douban.fm'
  version 'latest'
  sha256 :no_check
  link 'DoubanRadio.app'
end
