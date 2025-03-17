cask "sonos" do
  version "84.1-63110,20BaICzCKO"
  sha256 "9cf3dc666edb0d7a4c30555170fb84727fbe62d82415bfd16e35379d38d73b50"

  url "https://update-software.sonos.com/software/#{version.csv.second}/Sonos_#{version.csv.first}.dmg"
  name "Sonos S2"
  desc "Control your Sonos system"
  homepage "https://www.sonos.com/"

  livecheck do
    url "https://www.sonos.com/redir/controller_software_mac2"
    regex(%r{software/(\w+)/Sonos[._-]v?(\d+(?:[.-]\d+)+)\.dmg}i)
    strategy :header_match do |headers, regex|
      headers["location"]&.scan(regex)&.map { |match| "#{match[1]},#{match[0]}" }
    end
  end

  auto_updates true
  depends_on macos: ">= :el_capitan"

  app "Sonos.app"

  zap trash: "~/Library/Application Support/SonosV2"

  caveats do
    requires_rosetta
  end
end
