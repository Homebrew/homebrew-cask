cask "notesnook" do
  arch arm: "arm64", intel: "x64"

  version "3.4.5"
  sha256 arm:   "c70f28486a93a2f0a2a11bba15529922b16b684ef63f03efa999ace7e2b74bf3",
         intel: "66594e83b8ea920ab97d75cda0a3b8725d3f18ca3664abaf7601e777667db477"

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
  depends_on :macos

  app "Notesnook.app"

  zap trash: [
    "~/Library/Application Support/Notesnook",
    "~/Library/Logs/Notesnook",
    "~/Library/Preferences/com.streetwriters.notesnook.plist",
  ]
end
