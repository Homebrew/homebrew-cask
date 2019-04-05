cask 'qianqianmusic' do
  version :latest
  sha256 :no_check

  # download.qianqian.com was verified as official when first introduced to the cask
  url 'https://download.qianqian.com/channel/2/web_daohang'
  name 'Qianqian Music'
  name '千千音乐'
  homepage 'https://music.taihe.com/'

  app 'QianqianMusic.app'
end
