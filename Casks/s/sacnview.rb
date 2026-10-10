cask "sacnview" do
  version "3.1.0"
  sha256 "c58d8bf1740ccddec0d88121debacce48361669ebe95a923d4c337c074691757"

  url "https://github.com/docsteer/sacnview/releases/download/v#{version}/sACNView.dmg"
  name "sACNView"
  desc "Tool for monitoring and sending the Streaming ACN lighting control protocol"
  homepage "https://sacnview.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "sACNView.app"

  uninstall quit: "net.tomsteer.sacnview"

  zap trash: [
    "~/Library/Application Scripts/com.carallon.sacnview",
    "~/Library/Containers/com.carallon.sacnview",
    "~/Library/Preferences/net.tomsteer.sACNView.plist",
  ]
end
