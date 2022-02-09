cask "hightop" do
  version "1.3,35"
  sha256 "cc62867ed3b2f7c91e654166fbc59696661b67fc8df39677c4cf6d2f80138050"

  url "https://hightop.app/downloads/HighTop#{version.csv.first}.dmg"
  name "HighTop"
  desc "File access via the menu bar"
  homepage "https://hightop.app/"

  livecheck do
    url "https://hightop.app/downloads/updates.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "HighTop.app"

  uninstall quit: "com.knollsoft.HighTop"

  zap trash: [
    "~/Library/Application Scripts/com.knollsoft.HighTopLauncher",
    "~/Library/Application Support/HighTop+",
    "~/Library/Caches/com.knollsoft.HighTop",
    "~/Library/Containers/com.knollsoft.HighTopLauncher",
    "~/Library/Cookies/com.knollsoft.HighTop.binarycookies",
    "~/Library/HTTPStorages/com.knollsoft.HighTop",
    "~/Library/HTTPStorages/com.knollsoft.HighTop.binarycookies",
    "~/Library/Preferences/com.knollsoft.HighTop.plist",
    "~/Library/Saved Application State/com.knollsoft.HighTop.savedState",
  ]
end
