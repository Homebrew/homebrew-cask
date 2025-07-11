cask "rize" do
  arch arm: "arm64", intel: "x64"

  version "1.5.7"
  sha256 arm:   "3fae085c6fca5c04c38afded50f7d43ac232d9df932c336f072616602fc6dd67",
         intel: "176a19b5b6e12738b7ece389933d99731cd43dab7e4e1edfb164418bf7d62c3b"

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
