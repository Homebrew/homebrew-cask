cask "poedit" do
  version "3.0.1,6416"
  sha256 "3f927041cf4aac86b816aa34c249dd8c9e4c7fb2ab19db5b0bfb530ce7fbf1a4"

  url "https://download.poedit.net/Poedit-#{version.csv.first}.zip"
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
