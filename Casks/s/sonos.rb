cask "sonos" do
  version "16.3,80.1.55014"
  sha256 "cac8a5f9e13c2959bd2dff239a8576c40c2fb84afa7f412ac393dabf7b120461"

  url "https://update-software.sonos.com/software/xqkmivn9QB/Sonos_#{version.csv.second.sub(/(\d+)\.(\d+)\.(\d+)/, '\1.\2-\3')}.dmg"
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

  caveats do
    requires_rosetta
  end
end
