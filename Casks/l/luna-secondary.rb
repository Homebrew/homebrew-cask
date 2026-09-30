cask "luna-secondary" do
  version "5.3.9,5015"
  sha256 "293e57d0f70674c06d543337ac3cc07448f0e6f3ba972df08724f9534e31e59d"

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
