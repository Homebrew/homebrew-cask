cask "rhino-app" do
  version "8.34.26223.11002"
  sha256 "e1180ad6808122422efe174837d86100944ea06dd7a100f030f14870498b6ac9"

  url "https://files.mcneel.com/rhino/#{version.major}/mac/releases/rhino_#{version}.dmg"
  name "Rhinoceros"
  desc "3D model creator"
  homepage "https://www.rhino3d.com/"

  livecheck do
    url "https://files.mcneel.com/rhino/#{version.major}/mac/updates/commercialUpdates.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :monterey

  app "Rhino #{version.major}.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.mcneel.rhinoceros.sfl*",
    "~/Library/Caches/com.mcneel.rhinoceros",
    "~/Library/Preferences/com.mcneel.rhinoceros.plist",
  ]
end
