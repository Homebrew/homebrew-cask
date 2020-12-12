cask "iriunwebcam" do
  version "2.4.2"
  sha256 "047a0568dc3f96ffac7dedd520bab6f71da153a7409561cc87c6872167a589eb"

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
