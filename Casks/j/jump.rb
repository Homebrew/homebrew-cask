cask "jump" do
  version "9.0.93,90093"
  sha256 "5fb21c960eeda476d9e825bed5dcdcb597b7616ec217690b66145a9458cf6628"

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
