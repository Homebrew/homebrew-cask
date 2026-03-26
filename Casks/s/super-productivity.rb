cask "super-productivity" do
  arch arm: "arm64", intel: "x64"

  version "18.0.0"
  sha256 arm:   "eacd078f94417fbc51fd7850b2b10dbb8c7241aa9ff88fc9d127dda915fb387e",
         intel: "c2a1cce20c624d1eebdb41731bb6e7d3a4acde1b01c232065f07ab8253a31596"

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
