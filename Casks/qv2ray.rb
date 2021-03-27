cask "qv2ray" do
  version "2.6.3"
  sha256 "8554ff76b41dd4746cbd92afffeea32c990b5c9f836f9e71961656bb4bc235ae"

  url "https://github.com/Qv2ray/Qv2ray/releases/download/v#{version}/Qv2ray-v#{version}.macOS-x64.dmg",
      verified: "github.com/Qv2ray/Qv2ray/"
  name "Qv2ray"
  desc "V2Ray GUI client with extensive protocol support"
  homepage "https://qv2ray.net/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on formula: "v2ray"
  depends_on macos: ">= :mojave"

  app "qv2ray.app"

  zap trash: [
    "~/Library/Preferences/com.github.qv2ray.plist",
    "~/Library/Preferences/qv2ray",
    "~/Library/Saved Application State/com.github.qv2ray.savedState",
  ]
end
