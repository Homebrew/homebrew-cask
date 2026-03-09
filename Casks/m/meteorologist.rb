cask "meteorologist" do
  version "4.1.3"
  sha256 "20f688917d37e817219ec4e5906c08f905110c16794a7fba6bf33d555f40e884"

  url "https://downloads.sourceforge.net/heat-meteo/Meteorologist-#{version}.dmg",
      verified: "downloads.sourceforge.net/heat-meteo/"
  name "Meteorologist"
  desc "Adjustable weather viewing application"
  homepage "https://heat-meteo.sourceforge.io/"

  livecheck do
    url "https://sourceforge.net/projects/heat-meteo/rss?path=/Meteo"
    regex(%r{url=.*?/Meteorologist[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  depends_on macos: ">= :ventura"

  app "Meteorologist.app"

  zap trash: [
    "~/Library/Caches/com.heat.Meteorologist",
    "~/Library/Logs/Meteorologist.log",
    "~/Library/Preferences/com.heat.Meteorologist.plist",
  ]
end
