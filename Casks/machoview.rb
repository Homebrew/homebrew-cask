cask "machoview" do
  version "2.4.9200"
  sha256 "1eae99e92f51ca7a7470ffa9d78a2a31e28c743805ca514ec4a41210bc145e26"

  url "https://downloads.sourceforge.net/machoview/MachOView-#{version}.dmg"
  appcast "https://sourceforge.net/projects/machoview/rss"
  name "MachOView"
  homepage "https://sourceforge.net/projects/machoview/"

  app "MachOView.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/machoview.sfl2",
    "~/Library/Preferences/MachOView.plist",
  ]
end
