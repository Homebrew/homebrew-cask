cask "fiji" do
  version "20221013-0917"
  sha256 "d8a73e1c83d2436a1a66e582516bb8ee2b26c6ac4b9f0d3609f7560a7a9d12fb"

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
