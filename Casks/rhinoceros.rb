cask "rhinoceros" do
  version "6.30.20288.16412"
  sha256 "7516355ee38ec96966854f04aa053ab58954f774af66a9124307e5ad54b8c68a"

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
