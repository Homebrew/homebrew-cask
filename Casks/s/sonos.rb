cask "sonos" do
  version "15.6,74.0.43110"
  sha256 "797310d0e604c395dc50061e1375e0f1921bdc811c43311473b0b3320840ddf9"

  url "https://update-software.sonos.com/software/srahdpcj/Sonos_#{version.csv.second.sub(/(\d+)\.(\d+)\.(\d+)/, '\1.\2-\3')}.dmg"
  name "Sonos"
  desc "Control your Sonos system"
  homepage "https://www.sonos.com/"

  livecheck do
    url "https://www.sonos.com/en/redir/controller_software_mac2"
    strategy :extract_plist
  end

  auto_updates true

  app "Sonos.app"

  zap trash: "~/Library/Application Support/SonosV2"
end
