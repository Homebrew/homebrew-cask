cask "jump" do
  version "9.1.9,90109"
  sha256 "9ed0cf53d0e2a61ca741c2ba999f91e0ca13473b4ca59692a59c67d05c8cc199"

  url "https://mirror.jumpdesktop.com/downloads/jdm/JumpDesktopMac-#{version.csv.second}.zip",
      user_agent: :fake
  name "Jump Desktop"
  desc "Remote desktop application"
  homepage "https://jumpdesktop.com/#jdmac"

  livecheck do
    url "https://mirror.jumpdesktop.com/downloads/viewer/jdmac-web-appcast.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :high_sierra"

  app "Jump Desktop.app"

  zap trash: [
    "~/Documents/JumpDesktop",
    "~/Library/Caches/com.p5sys.jump.mac.viewer.web",
    "~/Library/Cookies/com.p5sys.jump.mac.viewer.web.binarycookies",
  ]
end
