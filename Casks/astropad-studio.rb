cask "astropad-studio" do
  version "5.0.0,4220"
  sha256 "28079980bf282545af4689be02ab6b7f9b0d495c1e076e79a4df444d02fdb45b"

  url "https://downloads.astropad.com/studio/mac/AstropadStudio-#{version.major_minor_patch}.#{version.csv.second}.dmg"
  name "Astropad Studio"
  desc "Turn your iPad into a professional drawing tablet"
  homepage "https://astropad.com/"

  livecheck do
    url "https://s3.amazonaws.com/astropad.com/downloads/studio-sparkle.xml"
    strategy :sparkle
  end

  app "Astropad Studio.app"

  uninstall quit: "com.astro-hq.AstropadStudioMac"

  zap trash: [
    "~/Library/Caches/Astropad",
    "~/Library/Caches/com.astro-hq.AstropadStudioMac",
    "~/Library/Preferences/com.astro-hq.AstropadStudioMac.plist",
    "~/Library/Saved Application State/com.astro-hq.AstropadStudioMac.savedState",
  ]
end
