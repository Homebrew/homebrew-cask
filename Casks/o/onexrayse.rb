cask "onexrayse" do
  version "26.7.1"
  sha256 "73d431cbc22e4a1327a86901c777eddb0712d247a6a1ba3adaa86355d4249012"

  url "https://github.com/OneXray/OneXray/releases/download/v#{version}/OneXray-macos-universal.zip",
      verified: "github.com/OneXray/OneXray/"
  name "OneXray"
  desc "Cross-platform Xray-core client"
  homepage "https://onexray.com/"

  depends_on macos: :monterey

  app "OneXraySE.app"

  zap trash: [
    "~/Library/Application Scripts/group.net.yuandev.onexray.se",
    "~/Library/Containers/net.yuandev.onexray.se",
    "~/Library/Containers/net.yuandev.onexray.se.tun",
    "~/Library/Group Containers/group.net.yuandev.onexray.se",
  ]
end
