cask "sonos" do
  version "15.10,76.2.46300"
  sha256 "b6818fdaa4689cb559d69bc8142a6faccb056dae7c1642ae04e9561c1538444d"

  url "https://update-software.sonos.com/software/wfdshdmg/Sonos_#{version.csv.second.sub(/(\d+)\.(\d+)\.(\d+)/, '\1.\2-\3')}.dmg"
  name "Sonos S2"
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
