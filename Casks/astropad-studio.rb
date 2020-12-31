cask "astropad-studio" do
  version "3.5.0,3180"
  sha256 "be952da8a7089186ae413a4b1dd173ae473ab572cd611d5a0a38b062b58082ff"

  url "https://s3.amazonaws.com/astropad.com/downloads/AstropadStudio-#{version.before_comma}.dmg",
      verified: "s3.amazonaws.com/astropad.com/"
  name "Astropad Studio"
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
