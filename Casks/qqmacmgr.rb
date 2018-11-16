cask 'qqmacmgr' do
  version '2.4.14'
  sha256 'b276bbabcbffca0ef7e14b590b7ebffcceb7102350192a785c57c6d9e6bad14e'

  url "https://dlied6.qq.com/invc/xfspeed/mac/verupdate/QQMacMgr_#{version}.dmg"
  name '腾讯电脑管家'
  homepage 'https://mac.gj.qq.com/'

  app 'QQMacMgr.app'
end
