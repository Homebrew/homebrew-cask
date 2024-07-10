cask "astropad-studio" do
  version "5.4.0,4871"
  sha256 "848410ce10a2139466fe4ed19437a7f6d92b44733e50e4e681433dcadc3d9f80"

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
