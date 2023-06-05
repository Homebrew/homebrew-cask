cask "jump" do
  version "8.9.16"
  sha256 "a4647fb2d2d8ca10d61b9442bf25470acbeab3881b1974e3d7e11321b690a03e"

  url "https://mirror.jumpdesktop.com/downloads/jdm/JumpDesktopMac-#{version}.zip"
  name "Jump Desktop"
  desc "Remote desktop application"
  homepage "https://jumpdesktop.com/#jdmac"

  livecheck do
    url "https://jumpdesktop.com/downloads/viewer/jdmac-web-appcast.xml"
    strategy :sparkle, &:short_version
  end

  app "Jump Desktop.app"

  zap trash: [
    "~/Documents/JumpDesktop",
    "~/Library/Caches/com.p5sys.jump.mac.viewer.web",
    "~/Library/Cookies/com.p5sys.jump.mac.viewer.web.binarycookies",
  ]
end
