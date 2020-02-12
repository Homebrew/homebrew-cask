cask 'fantastical' do
  version '3.0.4'
  sha256 'e3c09c7bfad1b815128dd4aedd186ae03ef9ae3e240b191d5ac47da145c61786'

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
