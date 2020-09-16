cask "prizmo" do
  version "4.0.4"
  sha256 "9fc1720e1bc0dc07971899dadd9c2c113c142fb89f075c3d2c2dd738dea7e00f"

  url "https://www.creaceed.com/downloads/prizmo#{version.major}_#{version}.zip"
  appcast "https://www.creaceed.com/appcasts/prizmo#{version.major}.xml"
  name "Prizmo"
  desc "Scanning application with Optical Character Recognition (OCR)"
  homepage "https://creaceed.com/prizmo"

  auto_updates true
  depends_on macos: ">= :yosemite"

  app "Prizmo.app"
end
