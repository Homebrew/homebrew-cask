cask "super-productivity" do
  arch arm: "arm64", intel: "x64"

  version "15.0.0"
  sha256 arm:   "40fe114ffa374ff7386203fed379fdcc42e4f0f3922ea23d3692b5a1fb01c8c4",
         intel: "4f33d81218010f8449f7042397122e5ed52a29c1aebee7dba3a067f636f3fd95"

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
