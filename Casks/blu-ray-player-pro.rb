cask "blu-ray-player-pro" do
  version "3.3.21,211028_0110"
  sha256 "4fd988e8a5a563468c7cfeb3bccb94004fbeeffa93f5da48f227c261ddf7ef56"

  url "https://cdn.macblurayplayer.com/mac-bluray-player-pro#{version.major}/Blu-ray_Player_Pro_#{version.csv.first}_#{version.csv.second}.dmg"
  name "Macgo Mac Blu-ray Player Pro"
  desc "Blu-ray player software"
  homepage "https://www.macblurayplayer.com/"

  livecheck do
    url "https://cdn.macblurayplayer.com/mac-bluray-player-pro#{version.major}/appcast/Appcast.xml"
    strategy :sparkle do |item|
      match = item.url.match(/_(\d(?:\.\d+)*)_(.*?)\.dmg/)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  app "Blu-ray Player Pro.app"
end
