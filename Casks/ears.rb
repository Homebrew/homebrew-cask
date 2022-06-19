cask "ears" do
  version "1.4,19"
  sha256 "372606dca51f9371e2e61ad2d7c6031e90ec2a1bb3ca8e992c5b003b4abc9127"

  url "https://get.retina.studio/ears/ears_#{version.csv.second}.dmg"
  name "Ears"
  desc "Instant audio switcher"
  homepage "https://retina.studio/ears/"

  livecheck do
    url "https://dash.retina.studio/appcast.php?id=50"
    strategy :sparkle
  end

  depends_on macos: ">= :big_sur"

  app "Ears.app"

  uninstall launchctl: "com.clickontyler.Ears.Launcher"

  zap trash: [
    "~/Library/Application Support/Ears",
    "~/Library/Application Support/com.clickontyler.Ears",
    "~/Library/Caches/com.clickontyler.Ears",
    "~/Library/HTTPStorages/com.clickontyler.Ears",
    "~/Library/HTTPStorages/com.clickontyler.Ears.binarycookies",
    "~/Library/Preferences/com.clickontyler.Ears.plist",
    "~/Library/Saved Application State/com.clickontyler.Ears.savedState",
    "~/Library/WebKit/com.clickontyler.Ears",
  ]
end
