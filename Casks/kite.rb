cask 'kite' do
  version '0.20200709.0'
  sha256 '96fd916620b2cf102450cdbf9b9d5013b3aa6b1e97e76bee32503a63b105bd6b'

  # draqv87tt43s0.cloudfront.net/ was verified as official when first introduced to the cask
  url "https://draqv87tt43s0.cloudfront.net/mac/#{version}/Kite.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
