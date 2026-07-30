cask "onexrayse" do
  version "26.8.2"
  sha256 "382ca9f84f73f7d902ca1e1dcd2e460b5718c7e13086bb3da291d0f41100e0f4"

  url "https://github.com/OneXray/OneXray/releases/download/v#{version}/OneXray-macos-universal.zip",
      verified: "github.com/OneXray/OneXray/"
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
