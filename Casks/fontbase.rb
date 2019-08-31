cask 'fontbase' do
  version '2.9.4'
  sha256 'dbb03cdb5bf702531eeb7a32e31eb05c00b741d344a8591cf9afb47001722ecd'

  url "https://releases.fontba.se/mac/FontBase-#{version}.dmg"
  appcast 'https://releases.fontba.se/mac/latest-mac.yml'
  name 'FontBase'
  homepage 'https://fontba.se/'

  app 'FontBase.app'

  zap trash: [
               '~/Library/Preferences/com.dominiklevitsky.fontbase.helper.plist',
               '~/Library/Preferences/com.dominiklevitsky.fontbase.plist',
               '~/Library/Application Support/FontBase',
               '~/Library/Saved Application State/com.dominiklevitsky.fontbase.savedState',
             ]
end
