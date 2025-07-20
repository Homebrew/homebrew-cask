cask "super-productivity" do
  arch arm: "arm64", intel: "x64"

  version "14.2.2"
  sha256 arm:   "22d3697ee8ad33de2c6fafee67c4ec44b72d65b29d95c32626a081e8adcbd35e",
         intel: "07c6778149bbbff14e4f101b167058e06eb8b9b3a91c19dce7d3fab4104393e8"

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
