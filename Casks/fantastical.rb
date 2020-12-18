cask "fantastical" do
  version "3.3.3"
  sha256 "50cac4fa7e1341fae11bb9d01ef1c091980001ed406be31570fd8f6c216e0070"

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
