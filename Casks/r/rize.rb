cask "rize" do
  arch arm: "arm64", intel: "x64"

  version "1.5.1"
  sha256  arm:   "3d16d4b3949190c224a261c2e753d6a8d8f732aa10679b6f6cbe3b06090545e0",
          intel: "74299843b4751f3c5f12b19694698378d973bcbae01e7c0918c23f8b38b21499"

  url "https://github.com/rize-io/lua/releases/download/v#{version}/Rize-#{version}-#{arch}.dmg",
      verified: "github.com/rize-io/lua/"
  name "Rize"
  desc "AI time tracker"
  homepage "https://rize.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Rize.app"

  zap trash: [
    "~/Library/Application Support/Rize",
    "~/Library/Caches/io.rize",
    "~/Library/Caches/io.rize.ShipIt",
    "~/Library/HTTPStorages/io.rize",
    "~/Library/Preferences/io.rize.plist",
    "~/Library/Saved Application State/io.rize.savedState",
  ]
end
