cask "iriunwebcam" do
  version "2.4"
  sha256 "76ba95bdbd020493664ffd557be430378a92a0b0d3c46ac0c49acc35ad14ddc9"

  # 1758658189.rsc.cdn77.org/ was verified as official when first introduced to the cask
  url "https://1758658189.rsc.cdn77.org/IriunWebcam-#{version}.pkg"
  appcast "https://iriun.com/"
  name "Iriun"
  homepage "https://iriun.com/"

  pkg "IriunWebcam-#{version}.pkg"

  uninstall quit:      "com.iriun.webcam",
            pkgutil:   "com.iriun.*",
            launchctl: "com.iriun.cmio.DPA.camera"
end
