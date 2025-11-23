cask "slab" do
  arch arm: "arm64", intel: "x64"

  version "1.6.1"
  sha256 arm:   "a65dadf01142c9494671aa507799a62de4e9dc296c31c21dd5a90308189a3fac",
         intel: "ebc6f3d7a3c2d5bad8e97b263645e057056134f56cc349bea8c4551831c8974c"

  url "https://github.com/slab/desktop-releases/releases/download/v#{version}/Slab-#{version}-darwin-#{arch}.dmg",
      verified: "github.com/slab/desktop-releases/"
  name "Slab"
  desc "Knowledge management for organisations"
  homepage "https://slab.com/"

  auto_updates true

  app "Slab.app"

  zap trash: [
    "~/Library/Application Support/Slab",
    "~/Library/Caches/com.slab.slab",
    "~/Library/Caches/com.slab.slab.ShipIt",
    "~/Library/HTTPStorages/com.slab.slab",
    "~/Library/Logs/Slab",
    "~/Library/Preferences/com.slab.slab.plist",
    "~/Library/Saved Application State/com.slab.slab.savedState",
  ]
end
