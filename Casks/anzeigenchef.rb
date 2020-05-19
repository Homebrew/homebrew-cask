cask 'anzeigenchef' do
  version '2.1.044'
  sha256 '406fad9faae19a099031189d77eaf5738293473840d613dcc71a7fb76034b298'

  url 'https://anzeigenchef.roundcubes.de/downloads/mac/AnzeigenChef.app.zip'
  appcast 'https://anzeigenchef.roundcubes.de/downloads/mac/appcast.xml'
  name 'AnzeigenChef'
  homepage 'https://anzeigenchef.roundcubes.de/'

  depends_on macos: '>= :sierra'

  app 'AnzeigenChef.app'

  zap trash: [
               '~/Library/Preferences/com.roundcubes.AnzeigenChefV2.plist',
               '~/Library/Application Support/AnzeigenChef',
               '~/Library/Saved Application State/MG.AnzeigenChef.savedState',
               '~/Library/Application Support/CrashReporter/AnzeigenChef*.plist',
             ]
end
