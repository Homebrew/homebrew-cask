cask "emdash" do
  arch arm: "arm64", intel: "x64"

  version "0.3.39"
  sha256 arm:   "bd7cfa636422856caed61c908745f7721972b29cd3b9ec71ef0a97d4651e8f98",
         intel: "785ad8d2dd9dfee667724072743ff50d99480187415d2a2def2291da0ea284bc"

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
