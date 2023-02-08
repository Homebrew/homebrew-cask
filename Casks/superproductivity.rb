cask "superproductivity" do
  arch arm: "-arm64"

  version "7.12.1"
  sha256 arm:   "8ea1e78696d78c933be6f1c7155302f08735c030c018720ee2e99045d81950c2",
         intel: "d4866664ba27ba6d3c42a039597b278c3de4aabc3ca36f1e2113f47a9ee665b9"

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
