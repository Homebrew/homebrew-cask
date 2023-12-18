cask "superproductivity" do
  arch arm: "-arm64"

  version "7.16.0"
  sha256 arm:   "0d6fcf7511fc3c9438819dc7340c843427296443c1e3a356efec8838b0e65303",
         intel: "9892831f6cef0a781fefe6670e16f702f3d54b64de97d5356d6e33399cb197e3"

  url "https://github.com/johannesjo/super-productivity/releases/download/v#{version}/superProductivity-#{version}#{arch}.dmg",
      verified: "github.com/johannesjo/super-productivity/"
  name "Super Productivity"
  desc "To-do list and time tracker"
  homepage "https://super-productivity.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "superProductivity.app"

  zap trash: [
    "~/Library/Application Support/superProductivity",
    "~/Library/Logs/superProductivity",
    "~/Library/Preferences/com.super-productivity.app.plist",
    "~/Library/Saved Application State/com.super-productivity.app.savedState",
  ]
end
