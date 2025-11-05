cask "emdash" do
  arch arm: "arm64", intel: "x64"

  version "0.3.28"
  sha256 arm:   "7d5f0d3f9b4e783e8b39e16bf6ab3b0ba78be02990db609d48b363358c398deb",
         intel: "27bb6206a02e4c922d4253e34621f1905c9455dd4a5bb1d4c2dc9d17a3a8680a"

  url "https://github.com/generalaction/emdash/releases/download/v#{version}/emdash-#{arch}.dmg",
      verified: "github.com/generalaction/emdash/"
  name "Emdash"
  desc "UI for running multiple coding agents in parallel"
  homepage "https://www.emdash.sh/"

  app "emdash.app"

  zap trash: [
    "/Library/Logs/emdash",
    "/Library/Saved Application State/com.emdash.savedState",
    "~/Library/Application Support/emdash",
    "~/Library/Preferences/com.emdash.plist",
  ]
end
