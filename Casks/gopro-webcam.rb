cask "gopro-webcam" do
  version "1.3"
  sha256 :no_check

  url "https://community.gopro.com/html/assets/GoPro.Webcam.pkg"
  name "GoPro Webcam"
  desc "GoPro Utility for using GoPro as a webcam"
  homepage "https://community.gopro.com/t5/Webcam/ct-p/Webcam"

  pkg "GoPro.Webcam.pkg"

  uninstall pkgutil: [
    "GoPro.GoPro-Webcam",
  ]
end