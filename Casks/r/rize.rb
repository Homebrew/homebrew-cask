cask "rize" do
  arch arm: "arm64", intel: "x64"

  version "3.0.7"
  sha256 arm:   "7b4188fa8729d579806ebb167e12959a7ef818990a2c2d6fbf8c0d34b640fa4b",
         intel: "a36365c9ebb3836b2cb95cf52632ec08fd6279418fcb0aa80514e7ac77b09de0"

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
  depends_on macos: :monterey

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
