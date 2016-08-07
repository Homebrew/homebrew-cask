cask 'baidumusic' do
  version :latest
  sha256 :no_check

  url 'http://music.baidu.com/player/mac/baidumusic_mac.dmg'
  name 'Baidu Music'
  name '百度音乐'
  homepage 'http://music.baidu.com/'
  license :gratis

  app '百度音乐.app'
end
