cask "rhinoceros" do
  version "6.29.20238.11402"
  sha256 "175a869cdcbc34f1b950600c78f1aed9b2e0351f98d0285b80c7300a96bab1c9"

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
