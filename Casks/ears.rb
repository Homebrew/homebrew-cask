cask "ears" do
  version "1.5,20"
  sha256 "7c2832c77b55a6df37e802f83721b412a7912e73cc4636d6de3fbc29414cef28"

  url "https://get.retina.studio/ears/ears_#{version.csv.second}.zip"
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
