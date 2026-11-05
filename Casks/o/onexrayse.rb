cask "onexrayse" do
  version "26.11.2"
  sha256 "ac21047974ff42508c172f2c51aa5526717b47d0ac16ad8b06f71ab5dbff6b91"

  url "https://github.com/YuanDevTeam/OneXray/releases/download/v#{version}/OneXray-macos-universal.zip"
  name "OneXray"
  desc "Cross-platform Xray-core client"
  homepage "https://onexray.com/"

  depends_on macos: :ventura

  app "OneXraySE.app"

  zap trash: [
    "~/Library/Application Scripts/group.net.yuandev.onexray.se",
    "~/Library/Application Scripts/net.yuandev.onexray.se",
    "~/Library/Containers/net.yuandev.onexray.se",
    "~/Library/Containers/net.yuandev.onexray.se.tun",
    "~/Library/Group Containers/group.net.yuandev.onexray.se",
  ]
end
