cask "superkey" do
  version "0.17"
  sha256 "72d39faba3681c55b201013a4243349b08285815f4ba8b7360f0dfff948d859d"

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
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.knollsoft.superkeylauncher.sfl2",
    "~/Library/Application Support/Superkey",
    "~/Library/Caches/com.knollsoft.Superkey",
    "~/Library/Containers/com.knollsoft.SuperkeyLauncher",
    "~/Library/HTTPStorages/com.knollsoft.Superkey",
    "~/Library/HTTPStorages/com.knollsoft.Superkey.binarycookies",
    "~/Library/Preferences/com.knollsoft.Superkey.plist",
  ]
end
