cask "ears" do
  version "1.3.1,18"
  sha256 "c67da49f54f18c43ce04127ab48ec1a5cf8421ff174a2d5b453cd585b70dd9f5"

  url "https://download.clickontyler.com/ears/ears_#{version.csv.second}.zip"
  name "Ears"
  desc "Instant audio switcher"
  homepage "https://clickontyler.com/ears/"

  livecheck do
    url "https://shine.clickontyler.com/appcast.php?id=50"
    strategy :sparkle
  end

  depends_on macos: ">= :high_sierra"

  app "Ears.app"

  uninstall launchctl: "com.clickontyler.Ears.Launcher"

  zap trash: [
    "~/Library/Application Support/Ears",
    "~/Library/Application Support/com.clickontyler.Ears",
    "~/Library/Caches/com.clickontyler.Ears",
    "~/Library/Preferences/com.clickontyler.Ears.plist",
    "~/Library/WebKit/com.clickontyler.Ears",
  ]
end
