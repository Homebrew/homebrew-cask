cask "poedit" do
  version "3.0,6376"
  sha256 "183371b3f3d557944ad9568d86d0e1c6029dc4ca4f7e9f054554be4bd827bedb"

  url "https://download.poedit.net/Poedit-#{version.before_comma}.zip"
  name "Poedit"
  desc "Translation editor"
  homepage "https://poedit.net/"

  livecheck do
    url "https://poedit.net/updates/osx/appcast"
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
