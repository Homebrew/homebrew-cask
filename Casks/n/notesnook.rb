cask "notesnook" do
  arch arm: "arm64", intel: "x64"

  version "3.0.3"
  sha256 arm:   "25823e7ad8356be1bbdb708c183569ab05d7c8cfbd881aaff0829fbc3159cf21",
         intel: "e7da51fae2a10ab637ae4f5e5c0d908d1ed0bb133dfd3d3cde0849981fb535d3"

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
