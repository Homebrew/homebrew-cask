cask "charmstone" do
  version "1.31"
  sha256 "7fd362a8c482ae4c28c570ba03f99c6f8293f242bf3137f73d9c2f0e3746ac85"

  url "https://charmstone.app/downloads/Charmstone#{version}.dmg"
  name "Charmstone"
  desc "App launcher and switcher"
  homepage "https://charmstone.app/"

  livecheck do
    url "https://charmstone.app/downloads/updates.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "Charmstone.app"

  uninstall quit: "com.knollsoft.CharmstonePro"

  zap trash: [
    "~/Library/Application Support/Charmstone Pro",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.knollsoft.charmstonepro.sfl*",
    "~/Library/Caches/com.knollsoft.CharmstonePro",
    "~/Library/HTTPStorages/com.knollsoft.CharmstonePro",
    "~/Library/HTTPStorages/com.knollsoft.CharmstonePro.binarycookies",
    "~/Library/Preferences/com.knollsoft.CharmstonePro.plist",
  ]
end
