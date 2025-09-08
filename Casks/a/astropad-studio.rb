cask "astropad-studio" do
  version "5.5.0,4961"
  sha256 "fb9f382dab7094bb36f051f53555ddeabda79ff175470d50848a6818c0504ced"

  url "https://downloads.astropad.com/studio/mac/AstropadStudio-#{version.csv.first}.#{version.csv.second}.dmg"
  name "Astropad Studio"
  desc "Turn your iPad into a professional drawing tablet"
  homepage "https://astropad.com/"

  livecheck do
    url "https://downloads.astropad.com/studio/mac/sparkle.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

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
