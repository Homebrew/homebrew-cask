cask "jump" do
  version "8.10.4"
  sha256 "f797ed1b3672a0c0f18cac6195890a6372b2260862780713a85f8d0aae4aa3e1"

  url "https://mirror.jumpdesktop.com/downloads/jdm/JumpDesktopMac-#{version}.zip",
      user_agent: :fake
  name "Jump Desktop"
  desc "Remote desktop application"
  homepage "https://jumpdesktop.com/#jdmac"

  livecheck do
    url "https://mirror.jumpdesktop.com/downloads/viewer/jdmac-web-appcast.xml"
    strategy :sparkle, &:short_version
  end

  app "Jump Desktop.app"

  zap trash: [
    "~/Documents/JumpDesktop",
    "~/Library/Caches/com.p5sys.jump.mac.viewer.web",
    "~/Library/Cookies/com.p5sys.jump.mac.viewer.web.binarycookies",
  ]
end
