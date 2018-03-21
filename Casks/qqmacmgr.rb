cask 'qqmacmgr' do
  version '2.4.8'
  sha256 '7e4ade5801f1526c665cf2d228ebfab911f2141863c1f9a4df5fad742aa96351'

  url "http://dlied6.qq.com/invc/xfspeed/mac/verupdate/QQMacMgr_#{version}.dmg"
  name '腾讯电脑管家'
  homepage 'http://mac.gj.qq.com/'

  app 'QQMacMgr.app'
end
