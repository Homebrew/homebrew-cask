cask "meteorologist" do
  version "5.0.3"
  sha256 "aa08cb7f2d0d4e8db31d7d8833329c44db1dd5ba432611eacf0c3a8901d33174"

  url "https://downloads.sourceforge.net/heat-meteo/Meteorologist-#{version}.dmg"
  name "Meteorologist"
  desc "Adjustable weather viewing application"
  homepage "https://heat-meteo.sourceforge.io/"

  livecheck do
    url "https://sourceforge.net/projects/heat-meteo/rss?path=/Meteo"
    regex(%r{url=.*?/Meteorologist[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  depends_on macos: :sonoma

  app "Meteorologist.app"

  zap trash: [
    "~/Library/Caches/com.heat.Meteorologist",
    "~/Library/Logs/Meteorologist.log",
    "~/Library/Preferences/com.heat.Meteorologist.plist",
  ]
end
