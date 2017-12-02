cask 'qqmacmgr' do
  version '2.4.7'
  sha256 'ac3664a56667bd08d3538440507487ab0e0da70babdebe0eeb2c766c99c500bb'

  url "http://dlied6.qq.com/invc/xfspeed/mac/verupdate/QQMacMgr_#{version}.dmg"
  name '腾讯电脑管家'
  homepage 'http://mac.gj.qq.com/'

  app 'QQMacMgr.app'
end
