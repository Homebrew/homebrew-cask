cask "slab" do
  arch arm: "arm64", intel: "x64"

  version "1.8.0"
  sha256 arm:   "d11ed9ee57487132d098e8d424bba0ccca0c67c13cee4c1a6709174b5ea729a7",
         intel: "0824be292d1ed911b85e39635fa015de80ecf1d86c178d2263772d2c1ca2cc0a"

  url "https://github.com/slab/desktop-releases/releases/download/v#{version}/Slab-#{version}-darwin-#{arch}.dmg"
  name "Slab"
  desc "Knowledge management for organisations"
  homepage "https://slab.com/"

  auto_updates true
  depends_on macos: :monterey

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
