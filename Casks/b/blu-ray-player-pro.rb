cask "blu-ray-player-pro" do
  version "3.3.22,231010_0359"
  sha256 "7ba71aeb925148e3af80d78b972c16da01a0d09214aaa2acd84f3d803dd1802e"

  url "https://cdn.macblurayplayer.com/mac-bluray-player-pro#{version.major}/Blu-ray_Player_Pro_#{version.csv.first}_#{version.csv.second}.dmg"
  name "Macgo Mac Blu-ray Player Pro"
  desc "Blu-ray player software"
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

  app "Blu-ray Player Pro.app"

  caveats do
    requires_rosetta
  end
end
