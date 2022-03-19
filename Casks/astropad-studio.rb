cask "astropad-studio" do
  version "3.7.0,3219"
  sha256 "f11c1f8c5cef55d35678fea3a08882c6cf6bac0e3493ec30d35a476783e15a47"

  url "https://s3.amazonaws.com/astropad.com/downloads/AstropadStudio-#{version.csv.first}.dmg",
      verified: "s3.amazonaws.com/astropad.com/"
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
