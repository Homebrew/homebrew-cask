cask "astropad-studio" do
  version "5.3.3,4771"
  sha256 "a8796135f96b022acf45dee6cd8ba70a8c1550fbe21d367ae608a5182add78fc"

  url "https://downloads.astropad.com/studio/mac/AstropadStudio-#{version.csv.first}.#{version.csv.second}.dmg"
  name "Astropad Studio"
  desc "Turn your iPad into a professional drawing tablet"
  homepage "https://astropad.com/"

  livecheck do
    url "https://downloads.astropad.com/studio/mac/sparkle.xml"
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
