cask "jump" do
  version "8.9.23"
  sha256 "ba684019f3efe3427bd806ca91589f7337c55cdb3d161fbddde37006a153f362"

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
