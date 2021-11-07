cask "ears" do
  version "1.2.3,16"
  sha256 "e5b7f17695d3e8e2af0f7a8daa0f3eb01427e729e91a945eb501e50d0f89a61f"

  url "https://download.clickontyler.com/ears/ears_#{version.after_comma}.zip"
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
