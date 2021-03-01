cask "fantastical" do
  version "3.3.5"
  sha256 "22256ebcd422436b1128397ca9294fc0f2c8fdbd280953933b20561a4e8c1428"

  url "https://cdn.flexibits.com/Fantastical_#{version}.zip"
  appcast "https://flexibits.com/fantastical/appcast2.php"
  name "Fantastical"
  homepage "https://flexibits.com/fantastical"

  auto_updates true

  app "Fantastical.app"

  uninstall launchctl: "com.flexibits.fantastical#{version.major}.mac.launcher",
            quit:      "com.flexibits.fantastical#{version.major}.mac"

  zap trash: [
    "~/Library/Preferences/com.flexibits.fantastical.plist",
    "~/Library/Application Scripts/com.flexibits.fbcaldav.*",
    "~/Library/Application Scripts/com.flexibits.fantastical#{version.major}.*",
    "~/Library/Containers/com.flexibits.fbcaldav.*",
    "~/Library/Containers/com.flexibits.fantastical#{version.major}.*",
  ]
end
