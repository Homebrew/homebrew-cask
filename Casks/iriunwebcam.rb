cask "iriunwebcam" do
  version "2.4.5"
  sha256 "9539ea4070b1eee2dafe6212808bdf8a4175f2d671cc185e73307ef1c7b781ef"

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
