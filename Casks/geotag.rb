cask 'geotag' do
  version '4.6.1'
  sha256 '2627f2afcdb4cecdb9c9e464a6c95de738f783f7d0a39a155b068d89a2e568bb'

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
