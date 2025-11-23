cask "superkey" do
  version "1.59"
  sha256 "59c85541912acb3cce29a4fec221f7e2b7fa668112a48fa45df6c69dce4b94aa"

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
