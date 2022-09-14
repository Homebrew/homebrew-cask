cask "fiji" do
  version "20220914-1417"
  sha256 "11d3764f5f750e9948bab3834d6ad022b85b528d56af517c69c470b2dd5f2dbd"

  url "https://downloads.imagej.net/fiji/archive/#{version}/fiji-macosx.zip",
      verified: "downloads.imagej.net/fiji/archive/"
  name "Fiji"
  desc "Open-source image processing package"
  homepage "https://fiji.sc/"

  livecheck do
    url "https://downloads.imagej.net/fiji/archive/"
    regex(/(\d{8}-\d{4})/i)
  end

  app "Fiji.app"
end
