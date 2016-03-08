cask 'chicken' do
  version '2.2b2'
  sha256 '20e910b6cbf95c3e5dcf6fe8e120d5a0911f19099128981fb95119cee8d5fc6b'

  url "http://downloads.sourceforge.net/project/chicken/Chicken-#{version}.dmg"
  appcast 'http://chicken.sourceforge.net/chicken.xml',
          checkpoint: '7dc47253417a3a5a34bbb32d25563b49cdec2c3d34f06893402349e1d19362e0'
  name 'Chicken'
  homepage 'http://sourceforge.net/projects/chicken/'
  license :gpl

  app 'Chicken.app'

  zap delete: '~/Library/Preferences/net.sourceforge.chicken.plist'
end
