cask "fantastical" do
  version "3.6.5,1448"
  sha256 "d7e0a5cc8c3e033a6c51b9c9ee7875bb1b907e96ad295cfffa5b2f3dc1514506"

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
            quit:      "com.flexibits.fantastical#{version.major}.mac"

  zap trash: [
    "~/Library/Application Scripts/com.flexibits.fantastical#{version.major}.*",
    "~/Library/Application Scripts/com.flexibits.fbcaldav.*",
    "~/Library/Containers/com.flexibits.fantastical#{version.major}.*",
    "~/Library/Containers/com.flexibits.fbcaldav.*",
    "~/Library/Preferences/com.flexibits.fantastical.plist",
  ]
end
