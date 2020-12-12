cask "fiji" do
  version :latest
  sha256 :no_check

  # downloads.imagej.net/fiji/ was verified as official when first introduced to the cask
  url "https://downloads.imagej.net/fiji/latest/fiji-macosx.zip"
  name "Fiji"
  desc "Open-source image processing package"
  homepage "https://fiji.sc/"

  app "Fiji.app"
end
