cask "astropad" do
  version "3.7.0"
  sha256 "a0b163918cd94ecb9ecc4f9c423812bb73ec643fc7be713d043886af94d1d280"

  url "https://downloads.astropad.com/standard/Astropad-#{version}.dmg"
  name "Astropad"
  desc "Utility to turn an iPad into a drawing tablet"
  homepage "https://astropad.com/"

  deprecate! date: "2024-04-11", because: :discontinued

  app "Astropad.app"

  uninstall quit: "com.astro-hq.AstropadMac"

  zap trash: [
    "~/Library/Caches/Astropad",
    "~/Library/Caches/com.astro-hq.AstropadMac",
    "~/Library/Preferences/com.astro-hq.AstropadMac.plist",
    "~/Library/Saved Application State/com.astro-hq.AstropadMac.savedState",
  ]
end
