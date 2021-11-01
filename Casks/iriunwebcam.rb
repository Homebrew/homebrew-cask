cask "iriunwebcam" do
  version "2.7"
  sha256 "6b33b2769bcd3d7622df70b48cb65b7573558a25bfb512acbdc70f75d2de6322"

  url "https://1758658189.rsc.cdn77.org/IriunWebcam-#{version}.pkg",
      verified: "1758658189.rsc.cdn77.org/"
  name "Iriun"
  desc "Use your phone's camera as a wireless webcam"
  homepage "https://iriun.com/"

  livecheck do
    url "https://iriun.com/"
    strategy :page_match
    regex(%r{href=.*?/IriunWebcam-(\d+(?:\.\d+)*)\.pkg}i)
  end

  pkg "IriunWebcam-#{version}.pkg"

  uninstall quit:      "com.iriun.webcam",
            pkgutil:   "com.iriun.*",
            launchctl: [
              "com.iriun.cmio.DPA.camera",
              "com.iriun.cmio.DPA.camerb",
              "com.iriun.cmio.DPA.camerc",
              "com.iriun.cmio.DPA.camerd",
            ]
end
