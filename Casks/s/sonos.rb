cask "sonos" do
  version "16.2,79.1.53290"
  sha256 "a502d6641b56de20c4caf95261daf80c6c8b45ee4782f3227194a3f59430f43e"

  url "https://update-software.sonos.com/software/6T0nrTOYJg/Sonos_#{version.csv.second.sub(/(\d+)\.(\d+)\.(\d+)/, '\1.\2-\3')}.dmg"
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
