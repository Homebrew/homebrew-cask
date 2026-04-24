cask "flightgear" do
  version "2024.1.5"
  sha256 "713b12e126cbdab9325a46e105ba71a0bf691358795758796dd707658a4bc0aa"

  url "https://mirrors.ibiblio.org/flightgear/ftp/release-#{version.major_minor}/flightgear-#{version}-macos-universal.dmg",
      verified: "mirrors.ibiblio.org/flightgear/"
  name "FlightGear"
  desc "Flight simulator"
  homepage "https://www.flightgear.org/"

  livecheck do
    url "https://www.flightgear.org/download/"
    regex(/href=.*?flightgear[._-]?v?(\d+(?:\.\d+)+)(?:[._-]macos)?(?:[._-]universal)?\.dmg/i)
  end

  depends_on :macos

  app "FlightGear.app"

  zap trash: "~/Library/Application Support/FlightGear"
end
