cask 'fantastical' do
  version '3.0.1'
  sha256 'abe9f84cca1e2cf14a856ac49df8d4267263e934d24e9b04478e7a4be503d50e'

  url "http://cdn.flexibits.com/Fantastical_#{version}.zip"
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
