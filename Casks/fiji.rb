cask "fiji" do
  version "1.0"
  sha256 :no_check

  url "https://downloads.imagej.net/fiji/latest/fiji-macosx.zip",
      verified: "downloads.imagej.net/fiji/"
  name "Fiji"
  desc "Open-source image processing package"
  homepage "https://fiji.sc/"

  app "Fiji.app"
end
