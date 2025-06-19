cask "charmstone" do
  version "1.39"
  sha256 "112de0f49bd5b8442583910649e22950da6b88303d89c1f1a1401f3a3ab8c2cb"

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
