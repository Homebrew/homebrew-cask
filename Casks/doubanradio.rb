cask :v1 => 'doubanradio' do
  version :latest
  sha256 :no_check

  url 'http://douban.fm/desktop_mac'
  appcast 'http://douban.fm/static/radio/desktop/doubanradio-appcast.xml'
  homepage 'http://douban.fm'
  license :unknown

  app 'DoubanRadio.app'
end
