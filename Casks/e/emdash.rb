cask "emdash" do
  arch arm: "arm64", intel: "x64"

  version "0.4.29"
  sha256 arm:   "63c1b16034608dfbe99bd1f4220b43d0c3b93ce71fc4431bb25294b2185a67e4",
         intel: "5504e5f13ba3505a152f29f6de5ad874b63fbffc9850186d790cb89dc635ed9c"

  url "https://github.com/generalaction/emdash/releases/download/v#{version}/emdash-#{arch}.dmg",
      verified: "github.com/generalaction/emdash/"
  name "Emdash"
  desc "UI for running multiple coding agents in parallel"
  homepage "https://www.emdash.sh/"

  depends_on macos: ">= :big_sur"

  app "emdash.app"

  zap trash: [
    "/Library/Logs/emdash",
    "/Library/Saved Application State/com.emdash.savedState",
    "~/Library/Application Support/emdash",
    "~/Library/Preferences/com.emdash.plist",
  ]
end
