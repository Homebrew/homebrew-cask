class Doubanradio < Cask
  version 'latest'
  sha256 :no_check

  url 'http://douban.fm/desktop_mac'
  appcast 'http://douban.fm/static/radio/desktop/doubanradio-appcast.xml'
  homepage 'http://douban.fm'

  link 'DoubanRadio.app'
end
