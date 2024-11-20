cask "charmstone" do
  version "1.33"
  sha256 "93935d34b5abf1276c6a3c13f0b12e46f4f341ddada0c71d4edad2ff92b656f6"

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
