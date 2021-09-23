cask "fantastical" do
  version "3.4.5,1338"
  sha256 "7685cea0d901fec1710361de1ed37f77fdab9196bd43155ba79a6ff29803a8e1"

  url "https://cdn.flexibits.com/Fantastical_#{version.before_comma}.zip"
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
            quit:      "com.flexibits.fantastical#{version.major}.mac"

  zap trash: [
    "~/Library/Preferences/com.flexibits.fantastical.plist",
    "~/Library/Application Scripts/com.flexibits.fbcaldav.*",
    "~/Library/Application Scripts/com.flexibits.fantastical#{version.major}.*",
    "~/Library/Containers/com.flexibits.fbcaldav.*",
    "~/Library/Containers/com.flexibits.fantastical#{version.major}.*",
  ]
end
