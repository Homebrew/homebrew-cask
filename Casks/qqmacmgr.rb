cask 'qqmacmgr' do
  version '2.4.1'
  sha256 '50517f1fa76441886c1874c6dbfb2e910e3e2a20ad71316b7714485bb641c6cb'

  url "http://dlied6.qq.com/invc/xfspeed/mac/verupdate/QQMacMgr_#{version}.dmg"
  name '腾讯电脑管家'
  homepage 'http://mac.gj.qq.com/'
  license :gratis

  app 'QQMacMgr.app'
end
