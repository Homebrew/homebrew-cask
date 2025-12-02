cask "astropad-studio" do
  version "5.5.2,4987"
  sha256 "d7e3c5ecbc1a59e5e62d6d649ab8e8416e522b5e92bf95293a4bbef7d51dc6cc"

  url "https://downloads.astropad.com/studio/mac/AstropadStudio-#{version.csv.first}.#{version.csv.second}.dmg"
  name "Astropad Studio"
  desc "Turn your iPad into a professional drawing tablet"
  homepage "https://astropad.com/"

  livecheck do
    url "https://downloads.astropad.com/studio/mac/sparkle.xml"
    strategy :sparkle
  end

  auto_updates true

  app "Astropad Studio.app"

  uninstall quit: "com.astro-hq.AstropadStudioMac"

  zap trash: [
        "~/Library/Application Support/astro-hq/AstropadStudio",
        "~/Library/Application Support/com.astro-hq.AstropadStudioMac",
        "~/Library/Caches/Astropad",
        "~/Library/Caches/com.astro-hq.AstropadStudioMac",
        "~/Library/Caches/SentryCrash/Astropad Studio",
        "~/Library/HTTPStorages/com.astro-hq.AstropadStudioMac",
        "~/Library/Logs/Astropad",
        "~/Library/Preferences/com.astro-hq.AstropadStudioMac.plist",
        "~/Library/Saved Application State/com.astro-hq.AstropadStudioMac.savedState",
      ],
      rmdir: "~/Library/Application Support/astro-hq"
end
