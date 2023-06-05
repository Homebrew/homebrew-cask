cask "sonos" do
  version "15.4,73.0.41050"
  sha256 "3925b4f116e90318752e120ab8739133fe8daca5c92094a8145982f10fc696a1"

  url "https://update-software.sonos.com/software/iwkvpnqy/Sonos_#{version.csv.second.sub(/(\d+)\.(\d+)\.(\d+)/, '\1.\2-\3')}.dmg"
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
