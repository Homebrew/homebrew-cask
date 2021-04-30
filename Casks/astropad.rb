cask "astropad" do
  version "3.6.0,3204"
  sha256 "5b3d2ae1f6a345a500253c95962b113ac06a6db1726dc3cfd3a0fe6d6a08c421"

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
