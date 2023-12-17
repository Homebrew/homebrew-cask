cask "qv2ray" do
  version "2.7.0"
  sha256 "457e1b70989515ddb9a1bd4c0635d4ea7d5eda17435bd63908151621b1235a97"

  url "https://github.com/Qv2ray/Qv2ray/releases/download/v#{version}/Qv2ray-v#{version}-macOS-x64.dmg",
      verified: "github.com/Qv2ray/Qv2ray/"
  name "Qv2ray"
  desc "V2Ray GUI client with extensive protocol support"
  homepage "https://qv2ray.net/"

  deprecate! date: "2023-12-17", because: :discontinued

  depends_on formula: "v2ray"
  depends_on macos: ">= :mojave"

  app "qv2ray.app"

  zap trash: [
    "~/Library/Preferences/com.github.qv2ray.plist",
    "~/Library/Preferences/qv2ray",
    "~/Library/Saved Application State/com.github.qv2ray.savedState",
  ]
end
