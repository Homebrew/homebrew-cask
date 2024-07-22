cask "superproductivity" do
  arch arm: "-arm64"

  version "9.0.5"
  sha256 arm:   "1abb056e08c9df405b854ab4c8f8b29b743ca4c91ec01ddf62bf8d0549731158",
         intel: "af06fd07d8b3175e071d04b145ec9bc80ff4519b3ad3ba458cb9b416bee2b3be"

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
