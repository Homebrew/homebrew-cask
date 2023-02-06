cask "fantastical" do
  version "3.7.7,1558"
  sha256 "da9b9d4d98ff9da712ff003310751d687d794448167d25d219d35fffd9349d56"

  url "https://cdn.flexibits.com/Fantastical_#{version.csv.first}.zip"
  name "Fantastical"
  desc "Calendar software"
  homepage "https://flexibits.com/fantastical"

  livecheck do
    url "https://flexibits.com/fantastical/appcast2.php"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

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
