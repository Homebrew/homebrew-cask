cask "sonos" do
  version "15.11,76.2.47270"
  sha256 "62f6f978660c4a553ed82bcb2c27712ee53b09c51b9922671ed52484924690d0"

  url "https://update-software.sonos.com/software/zypefwbr/Sonos_#{version.csv.second.sub(/(\d+)\.(\d+)\.(\d+)/, '\1.\2-\3')}.dmg"
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
