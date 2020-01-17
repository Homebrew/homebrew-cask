cask 'kite' do
  version '0.20200115.0'
  sha256 'a106c3e839767cc61990b45ed0fc5d632dc343227811cbf5640333847c03c73f'

  # kite-downloads.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://kite-downloads.s3.amazonaws.com/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
