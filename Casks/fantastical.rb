cask "fantastical" do
  version "3.3.7,1272"
  sha256 "d139d12f9ee16174f4da44e7cee61bf1a798962d8d348ba8b16e9896a8c706b9"

  url "https://cdn.flexibits.com/Fantastical_#{version.before_comma}.zip"
  name "Fantastical"
  desc "Calendar software"
  homepage "https://flexibits.com/fantastical"

  livecheck do
    url "https://flexibits.com/fantastical/appcast2.php"
    strategy :sparkle
  end

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
