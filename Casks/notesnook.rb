cask "notesnook" do
  arch arm: "arm64", intel: "x64"

  version "2.5.3"
  sha256 arm:   "24e6640a86fdd0f635b24d54d113fa561e11d6ecd93c7092dc8ada3a15a13ca1",
         intel: "7fead8131ec691c2f339f34ec9e8a5802720583223ebf1bcc0d74846e718419b"

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
