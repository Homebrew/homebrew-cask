cask "sonos" do
  version "85.0-64200,6aE5Z4LEEK"
  sha256 "1b8322ddeb1240989594775f1944f72f5bf363495fa909f5cfb3cb34f885858c"

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
