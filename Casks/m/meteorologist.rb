cask "meteorologist" do
  version "5.1.2"
  sha256 "c750f1bf87ce4e5b5f5df6c8553cc6c2dad21667d4f86e4d0df6f05be0accf20"

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
