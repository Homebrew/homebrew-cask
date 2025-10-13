cask "super-productivity" do
  arch arm: "arm64", intel: "x64"

  version "15.2.12"
  sha256 arm:   "4d100651db5b09e8c26004e7b2827573ff082d6faf38b37faa6cdd4a3b856d16",
         intel: "21082f8064afd5f2ccd5e45ea2735aee2c8b1f6d42b9b7f93b52b9017ba9625a"

  url "https://github.com/johannesjo/super-productivity/releases/download/v#{version}/superProductivity-#{arch}.dmg",
      verified: "github.com/johannesjo/super-productivity/"
  name "Super Productivity"
  desc "To-do list and time tracker"
  homepage "https://super-productivity.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "Super Productivity.app"

  zap trash: [
    "~/Library/Application Support/superProductivity",
    "~/Library/Logs/superProductivity",
    "~/Library/Preferences/com.super-productivity.app.plist",
    "~/Library/Saved Application State/com.super-productivity.app.savedState",
  ]
end
