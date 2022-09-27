cask "fiji" do
  version "20220923-1417"
  sha256 "9ed3f8e6bc3a8ea0712402aebcbf30ce7c5bf79d65de460036b8125c80000204"

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
