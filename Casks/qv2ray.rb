cask "qv2ray" do
  version "2.7.0-pre2"
  sha256 "dbf97e22e8c8081cd1ac07b880e0c3dd03e3f34a9a390729c7a95bfc8b974647"

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
