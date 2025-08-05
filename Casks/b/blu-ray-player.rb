cask "blu-ray-player" do
  version "3.3.23,250315_0521"
  sha256 "ffac1323400359c074332611d1d8697b24ad417206c8a846236ca6588147c47d"

  url "https://cdn.macblurayplayer.com/mac-bluray-player-#{version.major}/Blu-ray_Player_#{version.csv.first}_#{version.csv.second}.dmg"
  name "Macgo Mac Blu-ray Player"
  desc "Player for Blu-ray content"
  homepage "https://www.macblurayplayer.com/"

  livecheck do
    url "https://cdn.macblurayplayer.com/mac-bluray-player-pro#{version.major}/appcast/Appcast.xml"
    regex(/_(\d(?:\.\d+)*)_(.*?)\.dmg/i)
    strategy :sparkle do |item, regex|
      match = item.url.match(regex)
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
