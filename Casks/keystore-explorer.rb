cask 'keystore-explorer' do
  version '5.2.2'
  sha256 '64123f31c0216608aaf2e51dd6cf7715c067ef8985945c150e390c5104af78ef'

  # github.com/kaikramer/keystore-explorer was verified as official when first introduced to the cask
  url "https://github.com/kaikramer/keystore-explorer/releases/download/v#{version}/kse-#{version.no_dots}.dmg"
  appcast 'https://github.com/kaikramer/keystore-explorer/releases.atom',
          checkpoint: '6a4b8e5da148a2c0671e630d954989ddbd3d946e2927563e5611ce71da26e84c'
  name 'KeyStore Explorer'
  homepage 'http://keystore-explorer.org/'

  app "KeyStore Explorer #{version}.app"
end
