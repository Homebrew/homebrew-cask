cask "notesnook" do
  arch arm: "arm64", intel: "x64"

  version "3.3.1"
  sha256 arm:   "39486a3ed9c3cf51a71651a0d6c901287e1e2fdab4763eed2c3292b4a665f00c",
         intel: "26c82984b00e6247510da9f221405f0f85623e797c0fba5e49108c8e5c7c9c8f"

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

  app "Notesnook.app"

  zap trash: [
    "~/Library/Application Support/Notesnook",
    "~/Library/Logs/Notesnook",
    "~/Library/Preferences/com.streetwriters.notesnook.plist",
  ]
end
