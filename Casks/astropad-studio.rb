cask "astropad-studio" do
  version "3.6.0,3204"
  sha256 "4819188b06497bc9f9353baf891eae73f9434718ccae21e812fa8ffd41ef0dd5"

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
