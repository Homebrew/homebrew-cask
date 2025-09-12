cask "notesnook" do
  arch arm: "arm64", intel: "x64"

  version "3.2.4"
  sha256 arm:   "789572b8be6704632bf1684e2b834e30d48c6010124196ec6cb3cb82e83b64db",
         intel: "e36512f26e996c64d4364534a78cb4a605ca892b236591e5421c2fdbf2c394ee"

  url "https://github.com/streetwriters/notesnook/releases/download/v#{version}/notesnook_mac_#{arch}.dmg",
      verified: "github.com/streetwriters/notesnook/"
  name "Notesnook"
  desc "Privacy-focused note taking app"
  homepage "https://notesnook.com/"

  livecheck do
    url "https://notesnook.com/api/v1/releases/darwin/latest/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Notesnook.app"

  zap trash: [
    "~/Library/Application Support/Notesnook",
    "~/Library/Logs/Notesnook",
    "~/Library/Preferences/com.streetwriters.notesnook.plist",
  ]
end
