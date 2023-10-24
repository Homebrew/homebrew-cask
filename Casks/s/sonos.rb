cask "sonos" do
  version "15.9,75.1.46030"
  sha256 "7e173a1d693cd22a097245adf5246da443165b88ee61d8d97b66c94aa2877a96"

  url "https://update-software.sonos.com/software/irbxsaud/Sonos_#{version.csv.second.sub(/(\d+)\.(\d+)\.(\d+)/, '\1.\2-\3')}.dmg"
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
