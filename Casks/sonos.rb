cask "sonos" do
  version "15.3,72.2.40060"
  sha256 "5778943d5517d1f0da07808cc43f87fd45d99d0a657912ac24a1de7e49cb0bf2"

  url "https://update-software.sonos.com/software/anfqvtut/Sonos_#{version.csv.second.sub(/(\d+)\.(\d+)\.(\d+)/, '\1.\2-\3')}.dmg"
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
