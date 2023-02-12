cask "superproductivity" do
  arch arm: "-arm64"

  version "7.12.2"
  sha256 arm:   "3092a1820f1f883c4082d08206bc80b827d581e5f1d91455be060fa91e9b3a7b",
         intel: "f1af889c9b898dab0f43ecc9e73f706dc9502edb13603f66624574849de91196"

  url "https://github.com/johannesjo/super-productivity/releases/download/v#{version}/superProductivity-#{version}#{arch}.dmg",
      verified: "github.com/johannesjo/super-productivity/"
  name "Super Productivity"
  desc "To-do list and time tracker"
  homepage "https://super-productivity.com/"

  app "superProductivity.app"

  zap trash: [
    "~/Library/Application Support/superProductivity",
    "~/Library/Logs/superProductivity",
    "~/Library/Preferences/com.super-productivity.app.plist",
    "~/Library/Saved Application State/com.super-productivity.app.savedState",
  ]
end
