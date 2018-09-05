cask 'baidumusic' do
  version :latest
  sha256 :no_check

  # download.qianqian.com was verified as official when first introduced to the cask
  url 'http://download.qianqian.com/channel/2/web_daohang'
  name 'Baidu Music'
  name '百度音乐'
  homepage 'https://music.baidu.com/'

  app 'BaiduMusic.app'
end
