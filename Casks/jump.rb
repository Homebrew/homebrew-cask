cask "jump" do
  version "8.6.17"
  sha256 "51077813175c43e537adbbefcb353aaf1769d7e5b2628d82c0a2f9f507ade55d"

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
