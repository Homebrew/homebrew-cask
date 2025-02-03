cask "notesnook" do
  arch arm: "arm64", intel: "x64"

  version "3.0.25"
  sha256 arm:   "32c9d0966d308ba4ed1d05a18b6905a1ab28a4e5f4d64b35579c8e89d8e22eff",
         intel: "46354e6babd728eab788cfcd99370c9bf1684790bf5e6cdf5e42a2a5531e659f"

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
