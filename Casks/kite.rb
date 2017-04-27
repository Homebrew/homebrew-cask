cask 'kite' do
  version '0.20170421.0'
  sha256 '398d809b9b3529a75c26e95e6bb6c924bc822eff5966c17518c7072a0f0fe254'

  # s3-us-west-1.amazonaws.com/kite-downloads was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/kite-downloads/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml',
          checkpoint: 'd6b17c1d294c7cf4e239380b3b5bd2529f300d2279c583805d8e83335dde0f60'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
