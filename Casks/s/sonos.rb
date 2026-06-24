cask "sonos" do
  version "90.0-77070,rT0797IawE"
  sha256 "3a3cc74fa35e79e0499e67712ee70cc3eb51836d00970b2139cb131fc20b4cf1"

  url "https://update-software.sonos.com/software/#{version.csv.second}/Sonos_#{version.csv.first}.dmg"
  name "Sonos S2"
  desc "Control your Sonos system"
  homepage "https://www.sonos.com/"

  livecheck do
    url "https://www.sonos.com/redir/controller_software_mac2",
        user_agent: :curl
    regex(%r{software/(\w+)/Sonos[._-]v?(\d+(?:[.-]\d+)+)\.dmg}i)
    strategy :header_match do |headers, regex|
      headers["location"]&.scan(regex)&.map { |match| "#{match[1]},#{match[0]}" }
    end
  end

  auto_updates true
  depends_on :macos

  app "Sonos.app"

  zap trash: "~/Library/Application Support/SonosV2"

  caveats do
    requires_rosetta
  end
end
