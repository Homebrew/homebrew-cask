cask 'geotag' do
  version '4.7'
  sha256 '60321d98a35570307a1565292d7a09ef6c5f5deda78ee7ff06d7ae21df9e73c6'

  url "https://www.snafu.org/GeoTag/GeoTag-#{version}.dmg"
  appcast 'https://github.com/marchyman/GeoTag/releases.atom'
  name 'GeoTag'
  homepage 'https://www.snafu.org/GeoTag/'

  depends_on macos: '>= :sierra'
  depends_on formula: 'exiftool'

  app 'GeoTag.app'

  zap trash: [
               '~/Library/Caches/org.snafu.GeoTag',
               '~/Library/Preferences/org.snafu.GeoTag.plist',
               '~/Library/Saved Application State/org.snafu.GeoTag.savedState',
             ]
end
