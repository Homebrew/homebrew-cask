cask "charmstone" do
  version "1.44"
  sha256 "04b9a560a395abd4d731c7d4ffa4b091e595d3892cd93289b08f8248f5e459de"

  url "https://charmstone.app/downloads/Charmstone#{version}.dmg"
  name "Charmstone"
  desc "App launcher and switcher"
  homepage "https://charmstone.app/"

  livecheck do
    url "https://charmstone.app/downloads/updates.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true

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
