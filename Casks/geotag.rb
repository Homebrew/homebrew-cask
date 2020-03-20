cask 'geotag' do
  version '4.8'
  sha256 '09ef5408d5a4862dceec8ee7f7e56280c5ee61845a1a74dd9e7c1b7b75781a7a'

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
