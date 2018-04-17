cask 'geotag' do
  version '4.2'
  sha256 'fe98f72a40138d87a103a88427cbff635cd02ca3a3ff9d6a1d9bb8305ef87cbe'

  url "https://www.snafu.org/GeoTag/GeoTag-#{version}.dmg"
  appcast 'https://www.snafu.org/GeoTag/',
          checkpoint: '8a0dd8267f56b2dd19db3d2fc4e6d9ed953b7e9848523b900e4ed8951db255da'
  name 'GeoTag'
  homepage 'https://www.snafu.org/GeoTag/'

  depends_on formula: 'exiftool'

  app 'GeoTag.app'

  zap trash: [
               '~/Library/Caches/org.snafu.GeoTag',
               '~/Library/Preferences/org.snafu.GeoTag.plist',
               '~/Library/Saved Application State/org.snafu.GeoTag.savedState',
             ]
end
