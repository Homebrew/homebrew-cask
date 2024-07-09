cask "blu-ray-player" do
  version "3.3.22,231010_0359"
  sha256 "881881dbc991260a4590968af43a3444693d93f3c4d97cd445e1886748d2b2dc"

  url "https://cdn.macblurayplayer.com/mac-bluray-player-#{version.major}/Blu-ray_Player_#{version.csv.first}_#{version.csv.second}.dmg"
  name "Macgo Mac Blu-ray Player"
  desc "Player for Blu-ray content"
  homepage "https://www.macblurayplayer.com/"

  livecheck do
    url "https://cdn.macblurayplayer.com/mac-bluray-player-pro#{version.major}/appcast/Appcast.xml"
    strategy :sparkle do |item|
      match = item.url.match(/_(\d(?:\.\d+)*)_(.*?)\.dmg/)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  auto_updates true

  app "Blu-ray Player.app"

  caveats do
    requires_rosetta
  end
end
