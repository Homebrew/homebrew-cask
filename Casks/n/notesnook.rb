cask "notesnook" do
  arch arm: "arm64", intel: "x64"

  version "3.0.30"
  sha256 arm:   "f56655a09f2680a4f7592643a68183c82011a1fdeda7b34a0475656193bc171b",
         intel: "d0d575d6ca0b26e09347471cd02276a8c8876682f3b60031737ec64b7f40e972"

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
