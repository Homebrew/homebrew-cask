cask "onexrayse" do
  version "26.11.3"
  sha256 "974c55d61ddc14006696854000d7d49629b234a9b9aa61ad7105baad6ff2bf5b"

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
