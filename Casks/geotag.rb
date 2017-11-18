cask 'geotag' do
  version '4.0.23'
  sha256 '9fbf9fcbd27130ad5c333e8434747868c50b4b75cbcbd00245174c6489ec444c'

  url "https://www.snafu.org/GeoTag/GeoTag-#{version}.dmg"
  appcast 'https://www.snafu.org/GeoTag/',
          checkpoint: '792da791f2d5d043e2a3bf74215501fc6ca046319a945a9889d9df950d6ac05a'
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
