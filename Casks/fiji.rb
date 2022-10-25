cask "fiji" do
  version "20221024-1417"
  sha256 "6ac68ead3d1c1e327e97f8ece6957ae59b3dfa9d830f30828d5adf619fc00506"

  url "https://downloads.imagej.net/fiji/archive/#{version}/fiji-macosx.zip",
      verified: "downloads.imagej.net/fiji/archive/"
  name "Fiji"
  desc "Open-source image processing package"
  homepage "https://fiji.sc/"

  livecheck do
    url "https://downloads.imagej.net/fiji/archive/"
    regex(/(\d{8}-\d{4})/i)
  end

  auto_updates true

  app "Fiji.app"
end
