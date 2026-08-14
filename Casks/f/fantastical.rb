cask "fantastical" do
  version "4.1.18"
  sha256 "a62c8ca6fe608d6c4c20a1faa1828256339e9f132be9ac8979d140179aff0a51"

  url "https://cdn.flexibits.com/Fantastical_#{version}.zip"
  name "Fantastical"
  desc "Calendar software"
  homepage "https://flexibits.com/fantastical"

  livecheck do
    url "https://flexibits.com/fantastical/appcast2.php"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :monterey

  app "Fantastical.app"

  uninstall launchctl: "com.flexibits.fantastical*.mac.launcher",
            quit:      [
              "85C27NK92C.com.flexibits.fantastical2.mac.helper",
              "com.flexibits.fantastical2.mac",
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
