cask "poedit" do
  version "3.0.1,6416"
  sha256 "7f83cb329770e2e315f303d0487a431d8ae8804f4f744a47b55839088f89b41a"

  url "https://download.poedit.net/Poedit-#{version.tr(",", ".")}.zip"
  name "Poedit"
  desc "Translation editor"
  homepage "https://poedit.net/"

  livecheck do
    url "https://poedit.net/updates_v2/osx/appcast"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :yosemite"

  app "Poedit.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/net.poedit.poedit.sfl2",
    "~/Library/Application Support/Poedit",
    "~/Library/Caches/net.poedit.Poedit",
    "~/Library/HTTPStorages/net.poedit.Poedit.binarycookies",
    "~/Library/Preferences/net.poedit.Poedit.cfg",
    "~/Library/Preferences/net.poedit.Poedit.plist",
    "~/Library/Saved Application State/net.poedit.Poedit.savedState",
  ]
end
