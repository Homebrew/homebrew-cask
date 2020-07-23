cask 'fantastical' do
  version '3.1.3'
  sha256 '8995e3bb9c954c352ad3f081c2b1d03487f0dba1157bf72393dac8c57a8de18d'

  url "https://cdn.flexibits.com/Fantastical_#{version}.zip"
  appcast 'https://flexibits.com/fantastical/appcast2.php'
  name 'Fantastical'
  homepage 'https://flexibits.com/fantastical'

  auto_updates true

  app 'Fantastical.app'

  uninstall launchctl: "com.flexibits.fantastical#{version.major}.mac.launcher",
            quit:      "com.flexibits.fantastical#{version.major}.mac"

  zap trash: [
               '~/Library/Preferences/com.flexibits.fantastical.plist',
               '~/Library/Application Scripts/com.flexibits.fbcaldav.*',
               "~/Library/Application Scripts/com.flexibits.fantastical#{version.major}.*",
               '~/Library/Containers/com.flexibits.fbcaldav.*',
               "~/Library/Containers/com.flexibits.fantastical#{version.major}.*",
             ]
end
