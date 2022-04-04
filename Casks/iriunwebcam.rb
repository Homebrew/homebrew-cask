cask "iriunwebcam" do
  version "2.7.3"
  sha256 "d6d4f5b0a7b5cc442a3915bb21c24f617c060ffc110c6e15541c640f90fd08d7"

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

  uninstall quit:      "com.iriun.webcam",
            pkgutil:   "com.iriun.*",
            launchctl: [
              "com.iriun.cmio.DPA.camera",
              "com.iriun.cmio.DPA.camerb",
              "com.iriun.cmio.DPA.camerc",
              "com.iriun.cmio.DPA.camerd",
            ]
end
