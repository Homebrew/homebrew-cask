cask 'kite' do
  version '0.20200416.0'
  sha256 '79f15e1d234ff970551a3470bbc0cbef860bccc9893cb235063705998547ddbd'

  # draqv87tt43s0.cloudfront.net/ was verified as official when first introduced to the cask
  url "https://draqv87tt43s0.cloudfront.net/mac/#{version}/Kite.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
