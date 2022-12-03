cask "iriunwebcam" do
  version "2.7.4"
  sha256 "f8d99e14d141c9c722ace426c76845713f5cd3fdafce9953686db8c979eab42d"

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
