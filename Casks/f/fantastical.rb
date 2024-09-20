cask "fantastical" do
  version "3.9.1"
  sha256 "5203806bb233d44c9fa4a483b8e095338064ede87f31891b9bd1f6edd918a28f"

  url "https://cdn.flexibits.com/Fantastical_#{version}.zip"
  name "Fantastical"
  desc "Calendar software"
  homepage "https://flexibits.com/fantastical"

  livecheck do
    url "https://flexibits.com/fantastical/appcast2.php"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Fantastical.app"

  uninstall launchctl: "com.flexibits.fantastical*.mac.launcher",
            quit:      [
              "*.com.flexibits.fantastical*.mac.helper",
              "com.flexibits.fantastical*.mac",
            ]

  zap trash: [
    "~/Library/Application Scripts/*.com.flexibits.fantastical*",
    "~/Library/Application Scripts/com.flexibits.fantastical*",
    "~/Library/Application Scripts/com.flexibits.fbcaldav.*",
    "~/Library/Containers/com.flexibits.fantastical*",
    "~/Library/Containers/com.flexibits.fbcaldav.*",
    "~/Library/Group Containers/*.com.flexibits.fantastical*.mac",
    "~/Library/Preferences/com.flexibits.fantastical.plist",
  ]
end
