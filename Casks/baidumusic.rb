cask :v1 => 'baidumusic' do
  version :latest
  sha256 :no_check

  url 'http://music.baidu.com/player/mac/baidumusic_mac.dmg'
  name '百度音乐'
  name 'Baidu Music'
  homepage 'http://music.baidu.com/'
  license :gratis

  app '百度音乐.app'
end
