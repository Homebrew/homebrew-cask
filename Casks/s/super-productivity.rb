cask "super-productivity" do
  arch arm: "arm64", intel: "x64"

  version "16.4.1"
  sha256 arm:   "46c6ae0dbac042668b0834ecd846a4c5e3140f9571e1d27c5b2e71e736171eb7",
         intel: "68aeedf39c44767b22c5c66b626319039ff8a765aefda57b252fc74f6c4d9c1c"

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
