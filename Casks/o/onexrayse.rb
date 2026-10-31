cask "onexrayse" do
  version "26.11.1"
  sha256 "2ddc90cf3a2664f9d19a951cfd549c44b57f99afee0c8715d9825d7ff3b85ea9"

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
