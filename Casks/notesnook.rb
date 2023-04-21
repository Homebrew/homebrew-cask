cask "notesnook" do
  arch arm: "arm64", intel: "x64"

  version "2.4.8"
  sha256 arm:   "ee1f89a602f164302a8a446225188a4858960c79d5e2e7aab8a444f1cdfff2db",
         intel: "6aee220914b9852ebcaec9d3b0a3e570792bf912fabf744a7504187282caeb5b"

  url "https://github.com/streetwriters/notesnook/releases/download/v#{version}/notesnook_mac_#{arch}.dmg",
      verified: "github.com/streetwriters/notesnook/"
  name "Notesnook"
  desc "Privacy-focused note taking app"
  homepage "https://notesnook.com/"

  livecheck do
    url "https://notesnook.com/releases/darwin/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "Notesnook.app"

  zap trash: [
    "~/Library/Application Support/Notesnook",
    "~/Library/Logs/Notesnook",
    "~/Library/Preferences/com.streetwriters.notesnook.plist",
  ]
end
