cask "fantastical" do
  version "3.1.6"
  sha256 "57ac35de3d1b7e3a8561ea467443cd458dfd9b0e159e9c0e8c4cc20cc996b2ea"

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
