cask "rhino-app" do
  version "8.36.26293.11002"
  sha256 "8fdad2b403645eafdb954a67949938c22d69c5b6aa6ee22427c131ef1f28a5ab"

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
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.mcneel.rhinoceros*.sfl*",
    "~/Library/Caches/com.mcneel.rhinoceros",
    "~/Library/Preferences/com.mcneel.rhinoceros*.plist",
  ]
end
