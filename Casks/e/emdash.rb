cask "emdash" do
  arch arm: "arm64", intel: "x64"

  version "0.3.24"
  sha256 arm:   "18d294835fce515c6be49ac934d6314922ce72bda281e945699a157db6772923",
         intel: "73c4c72abc93a7f1db6b6e35edfde4c0f917ab9f9ea9844dac26fbe587577ed3"

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
