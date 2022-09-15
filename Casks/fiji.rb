cask "fiji" do
  version "20220914-2317"
  sha256 "cc0e01d6f6c6afb5144886729a50c6f235bffca94dfc44c709c5e01ecab689e7"

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
