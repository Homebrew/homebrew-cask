cask 'kite' do
  version '0.20180329.1'
  sha256 'b03fe9355aa37502e6bdad3744d7069afc6e16c767be9d2e77052bbc948be300'

  # s3-us-west-1.amazonaws.com/kite-downloads was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/kite-downloads/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml',
          checkpoint: 'c47cf74ffc7cdd181a0e864b405beec4213da1c88bc62f99f199dcd569e7172c'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
