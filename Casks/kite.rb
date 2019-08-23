cask 'kite' do
  version '0.20190822.0'
  sha256 '75c27e274225644bda020a2979c09635a0f5ec173569d37fbd67e3034c85f36b'

  # kite-downloads.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://kite-downloads.s3.amazonaws.com/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
