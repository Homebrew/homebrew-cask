cask 'chicken' do
  version '2.2b2'
  sha256 '20e910b6cbf95c3e5dcf6fe8e120d5a0911f19099128981fb95119cee8d5fc6b'

  url "https://downloads.sourceforge.net/chicken/Chicken-#{version}.dmg"
  appcast 'https://chicken.sourceforge.io/chicken.xml'
  name 'Chicken'
  homepage 'https://sourceforge.net/projects/chicken/'

  app 'Chicken.app'

  zap trash: '~/Library/Preferences/net.sourceforge.chicken.plist'
end
