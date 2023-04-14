cask "sonos" do
  version "15.2,72.2.39150"
  sha256 "cd6ec19343371907e2683aea45b84f9e6b3e4bad7d801f5b4eb2f8663f9fbb0c"

  url "https://update-software.sonos.com/software/vgnciqkn/Sonos_#{version.csv.second.sub(/(\d+)\.(\d+)\.(\d+)/, '\1.\2-\3')}.dmg"
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
