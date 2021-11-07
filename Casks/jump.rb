cask "jump" do
  version "8.8.16,80816"
  sha256 "eb43d7e74f27f215615affc35a52f7adea87d01b8bf186fe2297ea1016db8ca7"

  url "https://mirror.jumpdesktop.com/downloads/jdm/JumpDesktopMac-#{version.before_comma}.zip"
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
