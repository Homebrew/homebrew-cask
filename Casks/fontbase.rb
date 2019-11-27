cask 'fontbase' do
  version '2.10.3'
  sha256 'afb1fc07643747ed156bf5afc276055c70785a8655bb8bcdb0eda94abd95516d'

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
