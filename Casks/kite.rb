cask 'kite' do
  version '0.20170407.2'
  sha256 '50dd6cdec183551a4a671cdd3323a0401b7a111a58c1f4ffcb174d29b42f7bbb'

  # s3-us-west-1.amazonaws.com/kite-downloads was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/kite-downloads/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml',
          checkpoint: 'd638f4bf0a37d9b6765d8b71068087645850a127a7c4d79c2745358ffe55d867'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
