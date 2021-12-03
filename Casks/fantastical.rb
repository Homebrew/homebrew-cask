cask "fantastical" do
  version "3.5.1,1360"
  sha256 "62352e293315984f4794bc754a283935e76a11dc2b78d8772e1cb0fb0406b56a"

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
    "~/Library/Application Scripts/com.flexibits.fantastical#{version.major}.*",
    "~/Library/Application Scripts/com.flexibits.fbcaldav.*",
    "~/Library/Containers/com.flexibits.fantastical#{version.major}.*",
    "~/Library/Containers/com.flexibits.fbcaldav.*",
    "~/Library/Preferences/com.flexibits.fantastical.plist",
  ]
end
