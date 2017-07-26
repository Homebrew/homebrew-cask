cask 'kite' do
  version '0.20170725.1'
  sha256 '9e65b50a34a0606d15eb121db20b3aeb4da25809467cf2ea4ab687ed57f64316'

  # s3-us-west-1.amazonaws.com/kite-downloads was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/kite-downloads/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml',
          checkpoint: 'd463940e7333433908d245169a2bc77a364117e83a1a9d08a3d652f6a813ec61'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
