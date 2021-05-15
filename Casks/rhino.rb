cask "rhino" do
  version "7.6.21127.19002"
  sha256 "ecb07cf6fd14559962ee1fe1de1d8708d97eb151745652e36db63d97626d95a4"

  url "https://files.mcneel.com/rhino/#{version.major}/mac/releases/rhino_#{version}.dmg",
      verified: "mcneel.com/"
  name "Rhinoceros"
  desc "3D model creator"
  homepage "https://www.rhino3d.com/"

  livecheck do
    url "https://files.mcneel.com/rhino/#{version.major}/mac/updates/commercialUpdates.xml"
    strategy :sparkle, &:version
  end

  auto_updates true

  app "Rhino #{version.major}.app"

  zap trash: [
    "~/Library/Preferences/com.mcneel.rhinoceros.plist",
    "~/Library/Caches/com.mcneel.rhinoceros",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.mcneel.rhinoceros.sfl*",
  ]
end
