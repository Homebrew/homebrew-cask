cask "rhinoceros" do
  version "6.32.20340.21002"
  sha256 "60108e98e2354a063210b18d046378f96ba4fc0060c332c7524f86c350742750"

  url "https://files.mcneel.com/rhino/#{version.major}/mac/releases/rhino_#{version}.dmg",
      verified: "mcneel.com/"
  appcast "https://files.mcneel.com/rhino/#{version.major}/mac/updates/commercialUpdates.xml"
  name "Rhinoceros"
  homepage "https://www.rhino3d.com/"

  auto_updates true

  app "Rhinoceros.app"

  zap trash: [
    "~/Library/Preferences/com.mcneel.rhinoceros.plist",
    "~/Library/Caches/com.mcneel.rhinoceros",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.mcneel.rhinoceros.sfl*",
  ]
end
