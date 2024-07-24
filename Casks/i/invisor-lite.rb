cask "invisor-lite" do
  version "3.17"
  sha256 "acdbf1f7b09fff9a450feb99f1a9686b698f82c71303fe6297f0485829fca09f"

  url "https://www.invisorapp.com/download/InvisorLite-#{version}.dmg"
  name "Invisor Lite"
  desc "Media file inspector"
  homepage "https://www.invisorapp.com/"

  livecheck do
    url "https://www.invisorapp.com/appcast_lite.xml"
    strategy :sparkle, &:short_version
  end

  app "Invisor Lite.app"

  zap trash: [
    "~/Library/Preferences/com.pozdeev.invisorfree.plist",
    "~/Library/Saved Application State/com.pozdeev.invisorfree.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
