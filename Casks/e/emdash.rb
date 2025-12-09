cask "emdash" do
  arch arm: "arm64", intel: "x64"

  version "0.3.37"
  sha256 arm:   "d3e7e4127f9e3ba96df9acde7fb8d45906123f691114767ff248bef126f31098",
         intel: "29b613405e26187051461ea1dba73837e01bc24bc49aee1984e22910d43aa420"

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
