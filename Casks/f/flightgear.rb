cask "flightgear" do
  version "2024.1.7"
  sha256 "302e9e068342eed1aac6808b2966b5b0e70fa40cef4bb92bddfef709d098d6fc"

  url "https://mirrors.ibiblio.org/flightgear/ftp/release-#{version.major_minor}/flightgear-#{version}-macos-universal.dmg"
  name "FlightGear"
  desc "Flight simulator"
  homepage "https://www.flightgear.org/"

  livecheck do
    url "https://www.flightgear.org/download/"
    regex(/href=.*?flightgear[._-]?v?(\d+(?:\.\d+)+)(?:[._-]macos)?(?:[._-]universal)?\.dmg/i)
  end

  depends_on :macos

  app "FlightGear.app"

  uninstall quit: "org.flightgear.mac"

  zap trash: "~/Library/Application Support/FlightGear"
end
