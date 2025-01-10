cask "super-productivity" do
  arch arm: "arm64", intel: "x64"

  version "11.1.2"
  sha256 arm:   "3fbfa32eb850f52828bcd78a0e83f9394492a7e2496d3028ea5ebd976e32de29",
         intel: "cd97d5ee09aaae433bfe42f2e76c6fed40c269c6a0cbdea47e0f1eb289dedfc0"

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
