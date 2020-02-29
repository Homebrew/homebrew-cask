cask 'fantastical' do
  version '3.0.5'
  sha256 '3081f28ef5913b070a7fea18bb05eed66ef02a2b76e593b7ed74ed4ee5fe9dfc'

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
