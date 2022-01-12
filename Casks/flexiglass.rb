cask "flexiglass" do
  version "1.7.1,12833"
  sha256 "9ceb47ae0093646033960c9fc9c665b1bc59d46cd3baa8047dcb18b96ebd18cc"

  url "https://downloads.nulana.com/flexiglass/Flexiglass-#{version.csv.first}-#{version.csv.second}.zip"
  name "Flexiglass"
  homepage "https://nulana.com/flexiglass/"

  livecheck do
    url "https://downloads.nulana.com/flexiglass/appcast.xml"
    strategy :sparkle
  end

  app "Flexiglass.app"
end
