cask "astropad" do
  version "3.5.0,3180"
  sha256 "cfdc0334b757cd34f7cec08523cd45e8874da6f5c5815d3f57a003a4ad8217bc"

  url "https://downloads.astropad.com/standard/Astropad-#{version.before_comma}.dmg"
  name "Astropad"
  desc "Utility to turn an iPad into a drawing tablet"
  homepage "https://astropad.com/"

  livecheck do
    url "https://s3.amazonaws.com/astropad.com/downloads/sparkle.xml"
    strategy :sparkle
  end

  app "Astropad.app"

  uninstall quit: "com.astro-hq.AstropadMac"

  zap trash: [
    "~/Library/Caches/Astropad",
    "~/Library/Caches/com.astro-hq.AstropadMac",
    "~/Library/Preferences/com.astro-hq.AstropadMac.plist",
    "~/Library/Saved Application State/com.astro-hq.AstropadMac.savedState",
  ]
end
