cask "retcon" do
  version "1.1.2"
  sha256 "d558a6280706305af51e624a06a150e4e976840a2f2ab09a311dc1627eab66ca"

  url "https://f000.backblazeb2.com/file/downloads-lemon-garden/retcon/retcon-#{version}.dmg",
      verified: "f000.backblazeb2.com/file/downloads-lemon-garden/"
  name "Retcon"
  desc "Drag-and-drop Git history editor"
  homepage "https://retcon.app/"

  livecheck do
    url "https://lemon.garden/retcon/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Retcon.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/garden.lemon.retcon.sfl*",
    "~/Library/Caches/garden.lemon.Retcon",
    "~/Library/HTTPStorages/garden.lemon.Retcon",
    "~/Library/Preferences/garden.lemon.Retcon.plist",
    "~/Library/Saved Application State/garden.lemon.Retcon.savedState",
  ]
end
