cask :v1 => 'qqmacmgr' do
  version '2.4.0'
  sha256 'd8dd104bdf30e4e9fde8add44b546b667a717e21c2666886a317f9d2f08fb2f7'

  url 'http://dlied6.qq.com/invc/xfspeed/mac/verupdate/QQMacMgr_24_0_0.dmg'
  name '腾讯电脑管家'
  homepage 'http://mac.gj.qq.com/'
  license :gratis

  app 'QQMacMgr.app'
end
