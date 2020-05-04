cask 'joox' do
  version '1.1.1'
  sha256 '17e7589c0b1f6c19ccc53c850d5546e10bae206e06fe3deebb61853afdf5ce32'

  # download.music.wechat.com/ was verified as official when first introduced to the cask
  url 'https://download.music.wechat.com/JOOX-1.1.1.dmg?q-sign-algorithm=sha1&q-ak=AKIDxmPp3JKL9kCTYQ5xeGfsDpLitukNh7b6&q-sign-time=1573797970%3B1660197970&q-key-time=1573797970%3B1660197970&q-header-list=&q-url-param-list=&q-signature=dff7699e85f53fbedcc964d1fb7fef3cabd62163'
  name 'JOOX'
  homepage 'https://www.joox.com/'

  app 'JOOX.app'
end
