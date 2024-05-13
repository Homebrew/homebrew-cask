cask "sonos" do
  version "16.2,79.0.52294"
  sha256 "e23a4a69511f9ed67f75ebb7fc45bc2c434643a4790a33305e429f7570ce0dd4"

  url "https://update-software.sonos.com/software/nAtvycichO/Sonos_#{version.csv.second.sub(/(\d+)\.(\d+)\.(\d+)/, '\1.\2-\3')}.dmg"
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
