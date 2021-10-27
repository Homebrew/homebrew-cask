cask "iriunwebcam" do
  version "2.6"
  sha256 "f9c0b7ea5faa6e42ddd30148be00ba615bc1ad5e1cc60b0056c061e3074f652d"

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
