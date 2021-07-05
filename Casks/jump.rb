cask "jump" do
  version "8.7.15,80715"
  sha256 "5d9a9ac66fe35e3b9313ee916fd678867826c89c8f610d0688e462a245b18d80"

  url "https://dl.jumpdesktop.com/downloads/jdm/JumpDesktopMac-#{version.before_comma}.zip"
  name "Jump Desktop"
  desc "Remote desktop application"
  homepage "https://jumpdesktop.com/#jdmac"

  livecheck do
    url "https://jumpdesktop.com/downloads/viewer/jdmac-web-appcast.xml"
    strategy :sparkle
  end

  app "Jump Desktop.app"

  zap trash: [
    "~/Documents/JumpDesktop",
    "~/Library/Caches/com.p5sys.jump.mac.viewer.web",
    "~/Library/Cookies/com.p5sys.jump.mac.viewer.web.binarycookies",
  ]
end
