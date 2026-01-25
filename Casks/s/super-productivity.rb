cask "super-productivity" do
  arch arm: "arm64", intel: "x64"

  version "17.0.1"
  sha256 arm:   "5fe0a226a13cebbcbace57272176a35d3ae3ba2b00a56c7a4c6bba8df39b1dd4",
         intel: "7626951b0cf7d4f0f703ca47f47f57e68ae1b22245d4ad8b11c7d1dc861f5650"

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
