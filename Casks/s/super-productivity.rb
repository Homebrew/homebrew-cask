cask "super-productivity" do
  arch arm: "arm64", intel: "x64"

  version "16.8.1"
  sha256 arm:   "61f882fa02c9546151ee7a69415605cda7966ca036d522e9708c23b56631e626",
         intel: "7ca11e2e238b25e39b8a76ef32133d88dc1ab19ce3bea1c935a86be7c51b4a92"

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
