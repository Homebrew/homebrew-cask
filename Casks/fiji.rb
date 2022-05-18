cask "fiji" do
  version "20220414-1745"
  sha256 "99b90c323d9840615d2c3f34295a28beff5f3fa9be4a2b283f3481645c332c83"

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
