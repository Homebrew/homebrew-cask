cask "super-productivity" do
  arch arm: "arm64", intel: "x64"

  version "16.1.0"
  sha256 arm:   "f13ac8638bc78ffc3a274d6d4ec7a2903bdb05d5261b320a9f21479651c9d20a",
         intel: "8f4ad68ff368c1ec3ef84fbf015fbfa8e5028fe877e6ed0f7e877bdb6bfe054e"

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
