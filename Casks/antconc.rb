cask "antconc" do
  version "3.5.8"
  sha256 "d9870529c7e0213c6468de699fd04b2f20087005daec6948ee528fff7c817cc9"

  url "https://www.laurenceanthony.net/software/antconc/releases/AntConc#{version.no_dots}/AntConc.zip"
  appcast "https://www.laurenceanthony.net/software/antconc/releases/",
          must_contain: version.no_dots
  name "AntConc"
  homepage "https://www.laurenceanthony.net/software/antconc/"

  app "AntConc.app"
end
