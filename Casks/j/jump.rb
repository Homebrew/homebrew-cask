cask "jump" do
  version "9.0.99,90099"
  sha256 "7f72eb23568791ca1a83d1f384aea9af78b9c656d34796dad0170b698d4c5c48"

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
