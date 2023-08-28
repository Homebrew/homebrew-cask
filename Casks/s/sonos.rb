cask "sonos" do
  version "15.7,74.0.43312"
  sha256 "62f2da20c14e0e24bc387c6771f71b8d4d629ad8bfd713a19b1c7c26e317b44f"

  url "https://update-software.sonos.com/software/lrziuaat/Sonos_#{version.csv.second.sub(/(\d+)\.(\d+)\.(\d+)/, '\1.\2-\3')}.dmg"
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
