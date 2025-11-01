cask "flightgear" do
  version "2024.1.2"
  sha256 "3d5ee48e2d30be999e4c65e3aaeb7f1e28aef3de842625c170a261cfb830d131"

  url "https://mirrors.ibiblio.org/flightgear/ftp/release-#{version.major_minor}/flightgear-#{version}-macos-universal.dmg",
      verified: "mirrors.ibiblio.org/flightgear/"
  name "FlightGear"
  desc "Flight simulator"
  homepage "https://www.flightgear.org/"

  livecheck do
    url "https://www.flightgear.org/download/"
    regex(/href=.*?flightgear[._-]?v?(\d+(?:\.\d+)+)(?:[._-]macos)?(?:[._-]universal)?\.dmg/i)
  end

  app "FlightGear.app"

  zap trash: "~/Library/Application Support/FlightGear"
end
