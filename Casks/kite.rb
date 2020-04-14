cask 'kite' do
  version '0.20200411.0'
  sha256 '6f8bde03416a8183fb63e8b6aae316359ed41748e8ac0171d6f3dcd2e403cce5'

  # draqv87tt43s0.cloudfront.net was verified as official when first introduced to the cask
  url "https://draqv87tt43s0.cloudfront.net/mac/#{version}/Kite.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
