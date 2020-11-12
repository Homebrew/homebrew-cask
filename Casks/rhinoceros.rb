cask "rhinoceros" do
  version "6.31.20315.17002"
  sha256 "3f5bad2f5c401be465eb7ab3d99d6f55aaa947f1efe199c65c9f85cfd60f36c4"

  # mcneel.com/ was verified as official when first introduced to the cask
  url "https://files.mcneel.com/rhino/#{version.major}/mac/releases/rhino_#{version}.dmg"
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
