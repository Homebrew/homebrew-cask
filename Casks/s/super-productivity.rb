cask "super-productivity" do
  arch arm: "arm64", intel: "x64"

  version "18.12.0"
  sha256 arm:   "1d15de1322b6efc2833bd7496186f5d9ce3dcdb58a09c9e4d33e71f5131c3ccc",
         intel: "30fe9d3eff9a96f6870dd718f7275b2424a34955a87695f696382f0c04173658"

  url "https://github.com/super-productivity/super-productivity/releases/download/v#{version}/superProductivity-#{arch}.dmg",
      verified: "github.com/super-productivity/super-productivity/"
  name "Super Productivity"
  desc "To-do list and time tracker"
  homepage "https://super-productivity.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "Super Productivity.app"

  zap trash: [
    "~/Library/Application Support/superProductivity",
    "~/Library/Logs/superProductivity",
    "~/Library/Preferences/com.super-productivity.app.plist",
    "~/Library/Saved Application State/com.super-productivity.app.savedState",
  ]
end
