cask "fantastical" do
  version "3.8.2"
  sha256 "0fda73b34863e386070aad2922e1b5b4ed543f9319f191620c3bea51fb131130"

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
