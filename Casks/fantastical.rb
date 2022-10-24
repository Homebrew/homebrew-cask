cask "fantastical" do
  version "3.7.2,1520"
  sha256 "0895c6c3526f0003d6480597cd2fb7e0815da7c8f992425526050319b45cd26e"

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
