cask "blu-ray-player" do
  version "3.3.21,211028_0110"
  sha256 "1081c37d43411761e0b1b998b1bc60014aa1b2357e0e2a4f07491b7fdcdacd29"

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

  app "Blu-ray Player.app"
end
