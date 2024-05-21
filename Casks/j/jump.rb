cask "jump" do
  version "8.10.7"
  sha256 "252611e3e1fdce00a46d031903e39e22c4a237690e794f6cf9ccf92a41c7e0d4"

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
