cask "astropad-studio" do
  version "3.4.1"
  sha256 "daaa20466a73ca4bbae15aa6bb40c270561a1e76f72970405d475093ab8a16fa"

  # s3.amazonaws.com/astropad.com/ was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/astropad.com/downloads/AstropadStudio-#{version}.dmg"
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
