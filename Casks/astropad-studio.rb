cask "astropad-studio" do
  version "5.2.0,4455"
  sha256 "c920f8a6619beff47e6d8efedfd5068447d421ef2a1ce5bcc28fca70a6d72ee4"

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
