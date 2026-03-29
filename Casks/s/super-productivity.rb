cask "super-productivity" do
  arch arm: "arm64", intel: "x64"

  version "18.1.0"
  sha256 arm:   "458d737f1ecfc6f4a8d86aeb7daf5eb4533e45fa329d08cbcb401d8fe81e69cd",
         intel: "2843e0d5c28909edeb5f6e1d7d068f204ca4cfe13cc6f515a828e1aba7c97567"

  url "https://github.com/johannesjo/super-productivity/releases/download/v#{version}/superProductivity-#{arch}.dmg",
      verified: "github.com/johannesjo/super-productivity/"
  name "Super Productivity"
  desc "To-do list and time tracker"
  homepage "https://super-productivity.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "Super Productivity.app"

  zap trash: [
    "~/Library/Application Support/superProductivity",
    "~/Library/Logs/superProductivity",
    "~/Library/Preferences/com.super-productivity.app.plist",
    "~/Library/Saved Application State/com.super-productivity.app.savedState",
  ]
end
