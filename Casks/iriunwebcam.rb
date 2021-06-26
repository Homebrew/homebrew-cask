cask "iriunwebcam" do
  version "2.5.1"
  sha256 "3b67aa79975f379de31c244d480b06cd81022b60c7a7dd00a3a70c92d541a653"

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
