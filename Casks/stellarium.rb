cask :v1 => 'stellarium' do
  version '0.14.0'
  sha256 '1b7350a0a84f6c0056c53bc432c384f1501e3935c6118b64d87a365eb035982b'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/sourceforge/stellarium/Stellarium-#{version}.dmg"
  name 'Stellarium'
  homepage 'http://stellarium.org'
  license :gpl

  app 'Stellarium.app'
end
