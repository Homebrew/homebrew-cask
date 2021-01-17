cask "iriunwebcam" do
  version "2.4.2"
  sha256 "047a0568dc3f96ffac7dedd520bab6f71da153a7409561cc87c6872167a589eb"

  url "https://1758658189.rsc.cdn77.org/IriunWebcam-#{version}.pkg",
      verified: "1758658189.rsc.cdn77.org/"
  name "Iriun"
  homepage "https://iriun.com/"

  livecheck do
    url "https://iriun.com/"
    strategy :page_match
    regex(%r{href=.*?/IriunWebcam-(\d+(?:\.\d+)*)\.pkg}i)
  end

  pkg "IriunWebcam-#{version}.pkg"

  uninstall quit:      "com.iriun.webcam",
            pkgutil:   "com.iriun.*",
            launchctl: "com.iriun.cmio.DPA.camera"
end
