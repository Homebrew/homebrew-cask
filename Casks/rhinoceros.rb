cask "rhinoceros" do
  version "6.28.20199.17132"
  sha256 "303c6ce8463aaca47262586aa7aab2e4981138cfcea9ce4103a0f82227516272"

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
