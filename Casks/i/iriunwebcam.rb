cask "iriunwebcam" do
  version "2.9"
  sha256 "9c45d95b81c651e4827e98e24bebf603865680ab424dea462c2d53f504ffb82b"

  url "https://1758658189.rsc.cdn77.org/dl/IriunWebcam-#{version}.pkg",
      verified: "1758658189.rsc.cdn77.org/"
  name "Iriun"
  desc "Use your phone's camera as a wireless webcam"
  homepage "https://iriun.com/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/IriunWebcam[._-]?v?(\d+(?:\.\d+)+)\.pkg}i)
  end

  depends_on macos: ">= :monterey"

  pkg "IriunWebcam-#{version}.pkg"

  uninstall launchctl: [
              "com.iriun.cmio.DPA.camera",
              "com.iriun.cmio.DPA.camerb",
              "com.iriun.cmio.DPA.camerc",
              "com.iriun.cmio.DPA.camerd",
            ],
            quit:      [
              "com.iriun.macwebcam",
              "com.iriun.webcam",
            ],
            pkgutil:   "com.iriun.*"

  zap trash: "~/Library/Saved Application State/com.iriun.macwebcam.savedState"
end
