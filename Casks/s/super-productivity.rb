cask "super-productivity" do
  arch arm: "arm64", intel: "x64"

  version "17.1.7"
  sha256 arm:   "0b81ee760cda69972bf0c5cd45530dd8ae3ef6a3afb00ba9f962ff65fcffefe3",
         intel: "f1307f089c38e61a5e4d59da639df30d6ec3a24af53012098856956ae4ece452"

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
