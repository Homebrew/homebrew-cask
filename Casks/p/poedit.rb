cask "poedit" do
  version "3.8.1"
  sha256 "b3e2b91b5577d05be02e73e8833d1aa316d4c28030de137366d88768d3b6a067"

  url "https://download.poedit.net/Poedit-#{version}.zip"
  name "Poedit"
  desc "Translation editor"
  homepage "https://poedit.net/"

  livecheck do
    url "https://poedit.net/updates_v2/osx/appcast"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Poedit.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/net.poedit.poedit.sfl*",
    "~/Library/Application Support/Poedit",
    "~/Library/Caches/net.poedit.Poedit",
    "~/Library/HTTPStorages/net.poedit.Poedit.binarycookies",
    "~/Library/Preferences/net.poedit.Poedit.cfg",
    "~/Library/Preferences/net.poedit.Poedit.plist",
    "~/Library/Saved Application State/net.poedit.Poedit.savedState",
  ]
end
