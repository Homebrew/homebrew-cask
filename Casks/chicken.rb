cask 'chicken' do
  version '2.2b2'
  sha256 '20e910b6cbf95c3e5dcf6fe8e120d5a0911f19099128981fb95119cee8d5fc6b'

  url "http://downloads.sourceforge.net/project/chicken/Chicken-#{version}.dmg"
  appcast 'http://chicken.sourceforge.net/chicken.xml',
          :sha256 => 'a649ec458aa8ea0bd34ed395a85d35d7ca333f2442d1c209c8f159226ba92088'
  name 'Chicken'
  homepage 'http://sourceforge.net/projects/chicken/'
  license :gpl

  app 'Chicken.app'

  zap :delete => '~/Library/Preferences/net.sourceforge.chicken.plist'
end
