cask "sonos" do
  version "16.0,77.4.49290"
  sha256 "56cd4b46ab02b3eb2e3c3d94e53881465a12e6e881b5cab6d4c655adf4d84955"

  url "https://update-software.sonos.com/software/IkQJJWUcVE/Sonos_#{version.csv.second.sub(/(\d+)\.(\d+)\.(\d+)/, '\1.\2-\3')}.dmg"
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
