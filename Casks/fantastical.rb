cask 'fantastical' do
  version '2.5'
  sha256 '4831a316dc03696c05fe6b41f6fe92aa496cfc6d0299fc92e86129234ccecf28'

  url "http://cdn.flexibits.com/Fantastical_#{version}.zip"
  appcast "https://flexibits.com/fantastical/appcast#{version.major}.php"
  name 'Fantastical'
  homepage 'https://flexibits.com/fantastical'

  auto_updates true

  app "Fantastical #{version.major}.app"

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
