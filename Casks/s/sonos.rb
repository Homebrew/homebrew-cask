cask "sonos" do
  version "15.8,75.1.45120"
  sha256 "c9056c4c4bf2078f12d48e49e9169b9c1280d6aaa6f2061088f60afbaa8f63e1"

  url "https://update-software.sonos.com/software/fnwewsgg/Sonos_#{version.csv.second.sub(/(\d+)\.(\d+)\.(\d+)/, '\1.\2-\3')}.dmg"
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
