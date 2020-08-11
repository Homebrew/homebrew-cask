cask "astropad" do
  version "3.4.1"
  sha256 "6edacd8c0985cd51304618a1ea9963a0a71fdf09be7af56d7d9c336b94b6ff3a"

  url "https://downloads.astropad.com/standard/Astropad-#{version}.dmg"
  appcast "https://s3.amazonaws.com/astropad.com/downloads/sparkle.xml"
  name "Astropad"
  desc "Utility to turn an iPad into a drawing tablet"
  homepage "https://astropad.com/"

  app "Astropad.app"

  uninstall quit: "com.astro-hq.AstropadMac"

  zap trash: [
    "~/Library/Caches/Astropad",
    "~/Library/Caches/com.astro-hq.AstropadMac",
    "~/Library/Preferences/com.astro-hq.AstropadMac.plist",
    "~/Library/Saved Application State/com.astro-hq.AstropadMac.savedState",
  ]
end
