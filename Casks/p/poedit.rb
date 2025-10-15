cask "poedit" do
  version "3.8"
  sha256 "08d37c8caa1391e859686d28c5f55acc1229c3cc7dfcda7d515698fbe6cf32e1"

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
