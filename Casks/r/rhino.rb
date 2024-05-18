cask "rhino" do
  version "8.7.24138.15432"
  sha256 "026f097e83c5d82fd79d9b2487f67041246df51ae8e5455dccd66be7ee56fd8b"

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
