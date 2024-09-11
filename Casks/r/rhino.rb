cask "rhino" do
  version "8.11.24254.15002"
  sha256 "97b09f9a3db6b2be24f1ca18f72ce72ab0dbf61e5ad0253da4cc29ffca3e4248"

  url "https://files.mcneel.com/rhino/#{version.major}/mac/releases/rhino_#{version}.dmg",
      verified: "mcneel.com/rhino/"
  name "Rhinoceros"
  desc "3D model creator"
  homepage "https://www.rhino3d.com/"

  livecheck do
    url "https://files.mcneel.com/rhino/#{version.major}/mac/updates/commercialUpdates.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Rhino #{version.major}.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.mcneel.rhinoceros.sfl*",
    "~/Library/Caches/com.mcneel.rhinoceros",
    "~/Library/Preferences/com.mcneel.rhinoceros.plist",
  ]
end
