cask "super-productivity" do
  arch arm: "arm64", intel: "x64"

  version "17.1.5"
  sha256 arm:   "d6dbe827eed7ddd737c44ed4d2090833ee41fe2ed9818eb0bf679ac44c1faf37",
         intel: "a3147b0d733d92b807c4d5c42269203ed977789745e6c9139c35e2c4a350a0ba"

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
