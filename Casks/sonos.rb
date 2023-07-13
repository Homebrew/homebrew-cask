cask "sonos" do
  version "15.5,73.0.42060"
  sha256 "5ac0feeeb40b4241aaafacf76a343f359342b4cd3725532e6518c00a5fdcf653"

  url "https://update-software.sonos.com/software/eqsrsbpq/Sonos_#{version.csv.second.sub(/(\d+)\.(\d+)\.(\d+)/, '\1.\2-\3')}.dmg"
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
