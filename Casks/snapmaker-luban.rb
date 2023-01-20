cask "snapmaker-luban" do
  arch arm: "-arm64", intel: "-x64"

  version "4.5.0"
  sha256 arm:   "8003a02b3b1d2dace9ab1b1da44f6b8f3013bb4ccb000b76c70e9ce3891ca881",
         intel: "626e524f9e5c76a196f0f94845f1bb611e829c33166968887072e6acbe3a07c5"

  url "https://github.com/snapmaker/luban/releases/download/v#{version}/Snapmaker-Luban-#{version}-mac#{arch}.dmg",
      verified: "github.com/snapmaker/luban/"
  name "Snapmaker Luban"
  desc "3D printing software"
  homepage "https://luban.xyz/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "Snapmaker Luban.app"

  zap trash: [
    "~/Library/Caches/com.snapmaker.luban",
    "~/Library/Caches/com.snapmaker.luban.ShipIt",
    "~/Library/Preferences/ByHost/com.snapmaker.luban.ShipIt.*.plist",
    "~/Library/Preferences/com.snapmaker.luban.helper.plist",
    "~/Library/Preferences/com.snapmaker.luban.plist",
    "~/Library/Saved Application State/com.snapmaker.luban.savedState",
  ]
end
