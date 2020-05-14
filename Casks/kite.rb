cask 'kite' do
  version '0.20200512.1'
  sha256 '66fbb7de0908917752014fbc82504c3bee8c779b03ee0c776f272620a12e87f9'

  # draqv87tt43s0.cloudfront.net/ was verified as official when first introduced to the cask
  url "https://draqv87tt43s0.cloudfront.net/mac/#{version}/Kite.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
