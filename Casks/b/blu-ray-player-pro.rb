cask "blu-ray-player-pro" do
  version "3.3.23,250315_0521"
  sha256 "5b4aa7bc5a9007ed8aa5ca14c401f32e92e7a54801e4a0e68ad324352c8b4341"

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
