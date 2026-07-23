cask "onexrayse" do
  version "26.7.3"
  sha256 "e41d3149cf2c10cb6f197ed8928765ea3f1a372d79caba4e5f99e3686533c89b"

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
