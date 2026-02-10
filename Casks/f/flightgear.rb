cask "flightgear" do
  version "2024.1.4"
  sha256 "e01179874fd90241dacd6c17ac13c07b523c4f85640443ecf264a2a598d69daa"

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
