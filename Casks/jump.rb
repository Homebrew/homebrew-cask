cask "jump" do
  version "8.6.18"
  sha256 "e7e7b5b71320cc6261a0b27472413002fe76931c0b13382094d584a09fcca5bb"

  url "https://dl.jumpdesktop.com/downloads/JumpDesktopMac.zip"
  appcast "https://jumpdesktop.com/downloads/viewer/jdmac-web-appcast.xml"
  name "Jump Desktop"
  desc "Remote desktop application"
  homepage "https://jumpdesktop.com/#jdmac"

  app "Jump Desktop.app"

  zap trash: [
    "~/Documents/JumpDesktop",
    "~/Library/Caches/com.p5sys.jump.mac.viewer.web",
    "~/Library/Cookies/com.p5sys.jump.mac.viewer.web.binarycookies",
  ]
end
