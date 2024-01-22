cask "ears" do
  version "1.6,21"
  sha256 "59fb9296ac7f20d35375db18aa65fbe09e1f593f3279fcac59372d82cf545bc9"

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
    "~/Library/Application Support/com.clickontyler.Ears",
    "~/Library/Application Support/Ears",
    "~/Library/Caches/com.clickontyler.Ears",
    "~/Library/HTTPStorages/com.clickontyler.Ears",
    "~/Library/HTTPStorages/com.clickontyler.Ears.binarycookies",
    "~/Library/Preferences/com.clickontyler.Ears.plist",
    "~/Library/Saved Application State/com.clickontyler.Ears.savedState",
    "~/Library/WebKit/com.clickontyler.Ears",
  ]
end
