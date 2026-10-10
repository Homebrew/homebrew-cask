cask "meteorologist" do
  version "5.1.0"
  sha256 "dc5da70b80e601fa105b0300646486aee8d3ca0d81fd49bdc3df63e0c0f21d15"

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
