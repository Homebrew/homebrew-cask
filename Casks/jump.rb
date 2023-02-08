cask "jump" do
  version "8.9.11,80911"
  sha256 "72c5501e56e5caf2e85059e34e7db99edf31f2286c333ce9c64551d6f447c680"

  url "https://mirror.jumpdesktop.com/downloads/jdm/JumpDesktopMac-#{version.csv.first}.zip"
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
