cask "superkey" do
  version "1.34"
  sha256 "e677e2d25463321596d4099ab8f9d46821d2af3211a6b8411816731974522d0f"

  url "https://superkey.app/downloads/Superkey#{version}.dmg"
  name "Superkey"
  desc "Search and click text anywhere on screen"
  homepage "https://superkey.app/"

  livecheck do
    url "https://superkey.app/downloads/updates.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Superkey.app"

  uninstall quit: "com.knollsoft.Superkey"

  zap trash: [
    "~/Library/Application Scripts/com.knollsoft.SuperkeyLauncher",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.knollsoft.superkeylauncher.sfl*",
    "~/Library/Application Support/Superkey",
    "~/Library/Caches/com.knollsoft.Superkey",
    "~/Library/Containers/com.knollsoft.SuperkeyLauncher",
    "~/Library/HTTPStorages/com.knollsoft.Superkey",
    "~/Library/HTTPStorages/com.knollsoft.Superkey.binarycookies",
    "~/Library/Preferences/com.knollsoft.Superkey.plist",
  ]
end
