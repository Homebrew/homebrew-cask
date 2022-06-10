cask "meteorologist" do
  version "3.5.2"
  sha256 "50ce218fa028d3e64d3b17582a8638b975ff1a3f7d56f06e88b1dae668ded28a"

  url "https://downloads.sourceforge.net/heat-meteo/Meteorologist-#{version}.dmg",
      verified: "downloads.sourceforge.net/heat-meteo/"
  name "Meteorologist"
  desc "Adjustable weather viewing application"
  homepage "https://heat-meteo.sourceforge.io/"

  app "Meteorologist.app"

  zap trash: [
    "~/Library/Caches/com.heat.Meteorologist",
    "~/Library/Logs/Meteorologist.log",
    "~/Library/Preferences/com.heat.Meteorologist.plist",
  ]
end
