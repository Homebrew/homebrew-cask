cask "super-productivity" do
  arch arm: "arm64", intel: "x64"

  version "14.0.3"
  sha256 arm:   "c3c68b9dd5a9c11de78e2db9ea0c62a06c6eb519a736ba1731130fe4f63d9665",
         intel: "cc9ba962b96e174e38b23496ee74e2ee0a46527f6aef20ac858261f3738cfe42"

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
