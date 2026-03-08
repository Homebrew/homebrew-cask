cask "emdash" do
  arch arm: "arm64", intel: "x64"

  version "0.4.27"
  sha256 arm:   "114c3ea75fea74da573d6622ac86df4bba15e5bf7aa32592f06f5f583ef2c6f1",
         intel: "e8dbdccc73da43dfb905a012e9758eaa9d48312440006cca6ca2fc3675460b82"

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
