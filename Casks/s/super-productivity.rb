cask "super-productivity" do
  arch arm: "arm64", intel: "x64"

  version "18.13.1"
  sha256 arm:   "a70c00abb327acc83acd62f52c6c5e7544da46f7b205164da382208c5937816e",
         intel: "11e4da8d5b3b878468bb0eb50461bc07be6579f630ca120c87be60d204a5e745"

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
