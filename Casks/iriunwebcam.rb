cask "iriunwebcam" do
  version "2.8.2"
  sha256 "765c727789da1a24c51c34ee83d42a7a9bd866d45738b5923dc1ef434f29f552"

  url "https://1758658189.rsc.cdn77.org/IriunWebcam-#{version}.pkg",
      verified: "1758658189.rsc.cdn77.org/"
  name "Iriun"
  desc "Use your phone's camera as a wireless webcam"
  homepage "https://iriun.com/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/IriunWebcam[._-]?v?(\d+(?:\.\d+)+)\.pkg}i)
  end

  pkg "IriunWebcam-#{version}.pkg"

  uninstall quit:      [
              "com.iriun.macwebcam",
              "com.iriun.webcam",
            ],
            pkgutil:   "com.iriun.*",
            launchctl: [
              "com.iriun.cmio.DPA.camera",
              "com.iriun.cmio.DPA.camerb",
              "com.iriun.cmio.DPA.camerc",
              "com.iriun.cmio.DPA.camerd",
            ]
end
