cask "blu-ray-player-pro" do
  version "3.3.20,201204_0319"
  sha256 "857684e9583ba4f06bbdff94c2e4a1070dbf756cbc44530eb2414003cf78c9c5"

  url "https://cdn.macblurayplayer.com/mac-bluray-player-pro3/Blu-ray_Player_Pro_#{version.before_comma}_#{version.after_comma}.dmg"
  name "Macgo Mac Blu-ray Player Pro"
  desc "Blu-ray player software"
  homepage "https://www.macblurayplayer.com/"

  livecheck do
    url "https://cdn.macblurayplayer.com/mac-bluray-player-pro3/appcast/Appcast.xml"
    strategy :sparkle do |item|
      match = item.url.match(/_(\d(?:\.\d+)*)_(.*?)\.dmg/)
      "#{match[1]},#{match[2]}"
    end
  end

  app "Blu-ray Player Pro.app"
end
