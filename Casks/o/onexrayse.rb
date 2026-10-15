cask "onexrayse" do
  version "26.10.3"
  sha256 "9808c9d86cd8831d5b3730f7d7143efc90e81a3f70a1549781793796b3c5fe2d"

  url "https://github.com/YuanDevTeam/OneXray/releases/download/v#{version}/OneXray-macos-universal.zip"
  name "OneXray"
  desc "Cross-platform Xray-core client"
  homepage "https://onexray.com/"

  depends_on macos: :ventura

  app "OneXraySE.app"

  zap trash: [
    "~/Library/Application Scripts/group.net.yuandev.onexray.se",
    "~/Library/Containers/net.yuandev.onexray.se",
    "~/Library/Containers/net.yuandev.onexray.se.tun",
    "~/Library/Group Containers/group.net.yuandev.onexray.se",
  ]
end
