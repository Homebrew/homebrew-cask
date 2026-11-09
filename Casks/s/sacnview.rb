cask "sacnview" do
  version "3.1.0"
  sha256 "1f6e1ba203876214a147618fb5c93376d13c02090c4bfe17cbb6a7cffbc21d45"

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
