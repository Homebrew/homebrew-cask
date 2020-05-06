cask 'fantastical' do
  version '3.0.13'
  sha256 '18cb5258144c9abaec53bf5d8169d77b0996863eb626e6c319c16d09cb50b30c'

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
