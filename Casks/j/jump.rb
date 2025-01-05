cask "jump" do
  version "8.10.8"
  sha256 "118979e7449850dc036bdcef7ad29e23ee4deb3c7e37cc23883eb0e037466935"

  url "https://mirror.jumpdesktop.com/downloads/jdm/JumpDesktopMac-#{version}.zip",
      user_agent: :fake
  name "Jump Desktop"
  desc "Remote desktop application"
  homepage "https://jumpdesktop.com/#jdmac"

  livecheck do
    url "https://mirror.jumpdesktop.com/downloads/viewer/jdmac-web-appcast.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :high_sierra"

  app "Jump Desktop.app"

  zap trash: [
    "~/Documents/JumpDesktop",
    "~/Library/Caches/com.p5sys.jump.mac.viewer.web",
    "~/Library/Cookies/com.p5sys.jump.mac.viewer.web.binarycookies",
  ]
end
