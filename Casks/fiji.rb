cask "fiji" do
  version "20220927-1717"
  sha256 "4bf8560aa7b269b579e92e0aecd5a68c40e17bb52afeb7cf426d92fa7efd9fb7"

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
