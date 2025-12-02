cask "emdash" do
  arch arm: "arm64", intel: "x64"

  version "0.3.34"
  sha256 arm:   "9a007ffbc3d887b81e1af5188cd45eb0c769e2773ea674c507d1857baba58822",
         intel: "bdf23be366416ec25465f2cadbdce8fcc3ef6fba5842fe112e086399281f7a68"

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
