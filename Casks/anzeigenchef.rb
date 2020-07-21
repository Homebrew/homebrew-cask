cask 'anzeigenchef' do
  version '2.1.044'
  sha256 '973741126a94e12b9a5f71d3fd4c38e8c3a79566797b10a584ab2fd66c83b710'

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
