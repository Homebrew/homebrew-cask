cask 'geotag' do
  version '4.0.2'
  sha256 '513b422ea25c21630cb9946dd597d44dbc46199c25c66ace1736037dc296c97f'

  url "https://www.snafu.org/GeoTag/GeoTag-#{version}.dmg"
  appcast 'https://www.snafu.org/GeoTag/',
          checkpoint: 'e34194cba9d767551e615c05bd5e5547a9e688587c3e4e6eedf7e2b976954719'
  name 'GeoTag'
  homepage 'https://www.snafu.org/GeoTag/'

  depends_on formula: 'exiftool'

  app 'GeoTag.app'

  zap delete: [
                '~/Library/Caches/org.snafu.GeoTag',
                '~/Library/Saved Application State/org.snafu.GeoTag.savedState',
              ],
      trash:  '~/Library/Preferences/org.snafu.GeoTag.plist'
end
