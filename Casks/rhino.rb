cask "rhino" do
  version "7.4.21069.13332"
  sha256 "2d810dfbe99f583bdfaf2a1ea8488522103320be5d240af3b390cccce126ae9b"

  url "https://files.mcneel.com/rhino/#{version.major}/mac/releases/rhino_#{version}.dmg",
      verified: "mcneel.com/"
  name "Rhinoceros"
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
