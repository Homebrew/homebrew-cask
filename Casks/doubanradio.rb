cask :v1 => 'doubanradio' do
  version :latest
  sha256 :no_check

  url 'http://douban.fm/desktop_mac'
  appcast 'http://douban.fm/static/radio/desktop/doubanradio-appcast.xml'
  name '豆瓣FM'
  homepage 'http://douban.fm'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'DoubanRadio.app'
end
