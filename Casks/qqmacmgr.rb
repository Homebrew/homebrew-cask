cask 'qqmacmgr' do
  version '2.4.1'
  sha256 '142249e7567d41f84de53b30075e0f454377b3cf9635463dcd12e0381b83b199'

  url "http://dlied6.qq.com/invc/xfspeed/mac/verupdate/QQMacMgr_#{version}.dmg"
  name '腾讯电脑管家'
  homepage 'http://mac.gj.qq.com/'

  app 'QQMacMgr.app'
end
