cask "fantastical" do
  version "3.4.2,1318"
  sha256 "72ff10924c980c9ee6581f473ad9907e2c56da9687bbb36d9301af8762d85b78"

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
