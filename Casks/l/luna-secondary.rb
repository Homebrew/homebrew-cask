cask "luna-secondary" do
  version "5.3.8,4999"
  sha256 "323ba42f288f301c8d015121a0cf4e4676b26a9d2424e1618f486a823eece98e"

  url "https://downloads.astropad.com/luna-secondary/mac/LunaSecondary-#{version.csv.first}.#{version.csv.second}.dmg"
  name "Luna Secondary"
  desc "Turn a computer or tablet into a second display"
  homepage "https://astropad.com/product/lunadisplay/"

  livecheck do
    url "https://downloads.astropad.com/luna-secondary/mac/sparkle.xml"
    strategy :sparkle
  end

  depends_on :macos

  app "Luna Secondary.app"

  zap trash: [
    "~/Library/Application Support/astropad",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.astro-hq.lunasecondarymac.sfl*",
    "~/Library/Application Support/com.astro-hq.LunaSecondaryMac",
    "~/Library/Caches/com.astro-hq.LunaSecondaryMac",
    "~/Library/HTTPStorages/com.astro-hq.LunaSecondaryMac",
    "~/Library/Logs/Astropad",
    "~/Library/Preferences/com.astro-hq.LunaSecondaryMac.plist",
    "~/Library/Saved Application State/com.astro-hq.LunaSecondaryMac.savedState",
  ]
end
