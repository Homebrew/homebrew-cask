cask "onexrayse" do
  version "26.6.3"
  sha256 "09e10e0d33bf864f70e9e359bd3bbb9c6e9f110061ea2ad355ed02266510a05f"

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
