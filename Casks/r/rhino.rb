cask "rhino" do
  version "7.33.23248.13002"
  sha256 "ab21ae60ff7117cc782f1b9c86e3cad3974bfa9f2e557c03ae3ba4f6da1d96a4"

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
  depends_on macos: ">= :mojave"

  app "Rhino #{version.major}.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.mcneel.rhinoceros.sfl*",
    "~/Library/Caches/com.mcneel.rhinoceros",
    "~/Library/Preferences/com.mcneel.rhinoceros.plist",
  ]
end
