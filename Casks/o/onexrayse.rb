cask "onexrayse" do
  version "26.10.4"
  sha256 "7f7065c30a4d57395c4484950ec153a5d625c7539132b39524e640e79e4d3575"

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
