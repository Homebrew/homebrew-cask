cask "fantastical" do
  version "3.6.10,1478"
  sha256 "932f97862922f37d6cd6a5287860b22304d776c090988ac682e4b7400d1eb1bc"

  url "https://cdn.flexibits.com/Fantastical_#{version.csv.first}.zip"
  name "Fantastical"
  desc "Calendar software"
  homepage "https://flexibits.com/fantastical"

  livecheck do
    url "https://flexibits.com/fantastical/appcast2.php"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Fantastical.app"

  uninstall launchctl: "com.flexibits.fantastical#{version.major}.mac.launcher",
            quit:      [
              "85C27NK92C.com.flexibits.fantastical#{version.major}.mac.helper",
              "com.flexibits.fantastical#{version.major}.mac",
            ]

  zap trash: [
    "~/Library/Application Scripts/com.flexibits.fantastical#{version.major}.*",
    "~/Library/Application Scripts/com.flexibits.fbcaldav.*",
    "~/Library/Containers/com.flexibits.fantastical#{version.major}.*",
    "~/Library/Containers/com.flexibits.fbcaldav.*",
    "~/Library/Preferences/com.flexibits.fantastical.plist",
  ]
end
