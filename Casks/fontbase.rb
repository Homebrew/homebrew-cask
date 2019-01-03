cask 'fontbase' do
  version '2.6.4'
  sha256 '8871f16884b92c8309c75799415c5dce809e977033ee1a5141ed97c3c79c1180'

  url "https://releases.fontba.se/mac/FontBase-#{version}.dmg"
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
