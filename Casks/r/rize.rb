cask "rize" do
  arch arm: "arm64", intel: "x64"

  version "2.3.7"
  sha256 arm:   "d2b850295d80b808b14f0e76e0e4a512ee86ac0c3e2ed14ee2976e26bf6f3eeb",
         intel: "2ec9e0b8dee2641739e2802defea0f62915e604362c4e62c1d1be84d3be49b22"

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
  depends_on macos: ">= :monterey"

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
