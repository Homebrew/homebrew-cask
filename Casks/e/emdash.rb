cask "emdash" do
  arch arm: "arm64", intel: "x64"

  version "0.3.19"
  sha256 arm:   "bc8946e13bca87b9e42db33917f2944045c5f457724417bc68b8fc73a5438500",
         intel: "1c056f6dffcc13abf4ae665df252a5374d608ac015e6ab5cb7df556f0c115dc9"

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
