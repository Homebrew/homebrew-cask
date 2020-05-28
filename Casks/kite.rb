cask 'kite' do
  version '0.20200521.0'
  sha256 'ad3afa4c40f67ab4ebb9519ccd2a615a64a76b4e61029bbccff4c4f5db7d9ca3'

  # draqv87tt43s0.cloudfront.net/ was verified as official when first introduced to the cask
  url "https://draqv87tt43s0.cloudfront.net/mac/#{version}/Kite.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
