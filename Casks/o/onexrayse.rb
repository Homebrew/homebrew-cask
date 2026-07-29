cask "onexrayse" do
  version "26.8.1"
  sha256 "7354b27874ad32e55244a94fe4dd622d5d40b19ed0c89d40035462640d999d10"

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
