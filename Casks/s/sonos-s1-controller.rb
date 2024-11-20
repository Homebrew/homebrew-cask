cask "sonos-s1-controller" do
  version "57.22-59130,72ynP0v9lu"
  sha256 "18d8e7f79db9ab0951846d8f1c94d4a92cf3e6426f94dc7ee40a552a349f8443"

  url "https://update-software.sonos.com/software/#{version.csv.second}/Sonos_#{version.csv.first}.dmg"
  name "Sonos S1"
  desc "Controller for Gen 1 Sonos products"
  homepage "https://www.sonos.com/"

  livecheck do
    url "https://www.sonos.com/en/redir/controller_software_mac"
    regex(%r{software/(\w+)/Sonos[._-]v?(\d+(?:.\d+)+)\.dmg}i)
    strategy :header_match do |headers, regex|
      match = headers["location"]&.match(regex)
      next if match.blank?

      "#{match[2]},#{match[1]}"
    end
  end

  auto_updates true

  app "Sonos S1 Controller.app"

  zap trash: "~/Library/Application Support/Sonos"

  caveats do
    requires_rosetta
  end
end
