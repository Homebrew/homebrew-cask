cask "jump-desktop" do
  version "10.15.46"
  sha256 "6e4db1e0ae5bb2f8a6f2829273a5947be1502d3fea651e7c317614b6e1a173c0"

  url "https://mirror.jumpdesktop.com/downloads/viewer/JumpDesktopMac-#{version}.zip",
      user_agent: :fake
  name "Jump Desktop"
  desc "Remote desktop application"
  homepage "https://jumpdesktop.com/#jdmac"

  livecheck do
    url "https://mirror.jumpdesktop.com/downloads/viewer/jdmac-web-appcast.xml"
    strategy :sparkle, &:short_version
  end

  depends_on :macos

  app "Jump Desktop.app"

  zap trash: [
    "~/Documents/JumpDesktop",
    "~/Library/Application Support/Jump Desktop",
    "~/Library/Caches/com.p5sys.jump.mac.viewer.web",
    "~/Library/Cookies/com.p5sys.jump.mac.viewer.web.binarycookies",
    "~/Library/HTTPStorages/com.p5sys.jump.mac.viewer.web",
    "~/Library/Logs/Jump Desktop",
    "~/Library/Preferences/com.p5sys.jump.mac.viewer.web.plist",
  ]
end
