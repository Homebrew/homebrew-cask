cask 'coconutbattery' do
  if MacOS.version <= :mavericks
    version '3.3.4'
    sha256 '0edf6bdaf28fb3cc9c242fd916c348fbbae30a5356ddc1d6e5158d50f96d740d'
    url "https://www.coconut-flavour.com/downloads/coconutBattery_#{version.dots_to_underscores}.zip"
  elsif MacOS.version <= :yosemite
    version '3.6.4'
    sha256 '8e289fb4a75cb117fc1d7861020c9ab2384b09dfd18f066c7fadfc9d42c3ac56'
    url "https://www.coconut-flavour.com/downloads/coconutBattery_#{version}.zip"
  else
    version '3.6.8'
    sha256 'ffe8f22e2bf4bf1ff94adceacb2977d211184afab985ea57732efb701614d5e3'
    url "https://www.coconut-flavour.com/downloads/coconutBattery_#{version}.zip"
    appcast 'https://coconut-flavour.com/updates/coconutBattery.xml'
  end

  name 'coconutBattery'
  homepage 'https://www.coconut-flavour.com/coconutbattery/'

  auto_updates true

  app 'coconutBattery.app'

  uninstall launchctl: 'com.coconut-flavour.coconutBattery-Menu',
            quit:      'com.coconut-flavour.coconutBattery-Menu'

  zap trash: [
               '~/Library/Application Support/coconutBattery',
               '~/Library/Caches/com.coconut-flavour.coconutBattery*',
               '~/Library/Group Containers/*.coconut-flavour.coconutBattery',
               '~/Library/Preferences/com.coconut-flavour.coconutBattery.plist',
               '~/Library/Saved Application State/com.coconut-flavour.coconutBattery.savedState',
             ]
end
