cask "flightgear" do
  version "2024.1.6"
  sha256 "44aa39c6344b17d2186d853c51387bc27336b3f763dca37a167b38cad3ffbeb7"

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
