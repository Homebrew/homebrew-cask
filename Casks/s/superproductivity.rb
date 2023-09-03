cask "superproductivity" do
  arch arm: "-arm64"

  version "7.14.3"
  sha256 arm:   "db512428e17fc4296e30da0586b8c9e39f764d67d2a5ea0e7ea32d41c3a4bd36",
         intel: "8b883c5c9e1dcd6ada19c329c84a710e30844850365bd2913b5f0f399a57d2fa"

  url "https://github.com/johannesjo/super-productivity/releases/download/v#{version}/superProductivity-#{version}#{arch}.dmg",
      verified: "github.com/johannesjo/super-productivity/"
  name "Super Productivity"
  desc "To-do list and time tracker"
  homepage "https://super-productivity.com/"

  app "superProductivity.app"

  zap trash: [
    "~/Library/Application Support/superProductivity",
    "~/Library/Logs/superProductivity",
    "~/Library/Preferences/com.super-productivity.app.plist",
    "~/Library/Saved Application State/com.super-productivity.app.savedState",
  ]
end
