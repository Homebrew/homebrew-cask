cask 'geotag' do
  version '4.4'
  sha256 '5ab97b2e09bab7386b5c66a8a389797a3f3b8e42dadde4863ad418695596efbe'

  url "https://www.snafu.org/GeoTag/GeoTag-#{version}.dmg"
  appcast 'https://www.snafu.org/GeoTag/'
  name 'GeoTag'
  homepage 'https://www.snafu.org/GeoTag/'

  depends_on macos: '>= :yosemite'
  depends_on formula: 'exiftool'

  app 'GeoTag.app'

  zap trash: [
               '~/Library/Caches/org.snafu.GeoTag',
               '~/Library/Preferences/org.snafu.GeoTag.plist',
               '~/Library/Saved Application State/org.snafu.GeoTag.savedState',
             ]
end
