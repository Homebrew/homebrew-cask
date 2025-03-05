cask "charmstone" do
  version "1.37"
  sha256 "a606d86ee9cb2d5c9c918b255a9a88e163c11fe7ca6cc4dab00a00387d514190"

  url "https://charmstone.app/downloads/Charmstone#{version}.dmg"
  name "Charmstone"
  desc "App launcher and switcher"
  homepage "https://charmstone.app/"

  livecheck do
    url "https://charmstone.app/downloads/updates.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :catalina"

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
