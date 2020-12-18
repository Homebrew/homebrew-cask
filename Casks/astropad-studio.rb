cask "astropad-studio" do
  version "3.5.0"
  sha256 "be952da8a7089186ae413a4b1dd173ae473ab572cd611d5a0a38b062b58082ff"

  url "https://s3.amazonaws.com/astropad.com/downloads/AstropadStudio-#{version}.dmg",
      verified: "s3.amazonaws.com/astropad.com/"
  appcast "https://s3.amazonaws.com/astropad.com/downloads/studio-sparkle.xml"
  name "Astropad Studio"
  homepage "https://astropad.com/"

  app "Astropad Studio.app"

  uninstall quit: "com.astro-hq.AstropadStudioMac"

  zap trash: [
    "~/Library/Caches/Astropad",
    "~/Library/Caches/com.astro-hq.AstropadStudioMac",
    "~/Library/Preferences/com.astro-hq.AstropadStudioMac.plist",
    "~/Library/Saved Application State/com.astro-hq.AstropadStudioMac.savedState",
  ]
end
