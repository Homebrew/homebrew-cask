cask "meteorologist" do
  version "4.0.4"
  sha256 "34b4abcb1c7da7c8897b6270a9258a21d030f10803d5b7ec4a6e306db8223e6d"

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
