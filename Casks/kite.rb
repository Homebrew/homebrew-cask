cask 'kite' do
  version '0.20170608.0'
  sha256 '8f2e11ba726dbfa26719cb2053e4b62110c4d66e23e5ca7ebb055db1251c9891'

  # s3-us-west-1.amazonaws.com/kite-downloads was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/kite-downloads/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml',
          checkpoint: '75ed70bdc770adb3d099db11d52af02d766cba66bc52dce4811c6db10c579d81'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
