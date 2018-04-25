cask 'fantastical' do
  version '2.4.9'
  sha256 'fda07fbf999413349d101d80666e671a1f2dfabe3d77e3178e9fc98ad7daa70a'

  url "http://cdn.flexibits.com/Fantastical_#{version}.zip"
  appcast "https://flexibits.com/fantastical/appcast#{version.major}.php",
          checkpoint: '46a337c235e2ea70e564e25631c6f8b8e1c7dcefe8b64f77bb41303764033d1b'
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
