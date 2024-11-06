cask "super-productivity" do
  arch arm: "arm64", intel: "x64"

  version "10.1.0"
  sha256 arm:   "61567a2a1e7d2e4b2b2db2fe2fb6edbd87d0cb3fe673caa0be89f453aa01bbf9",
         intel: "42073c2dcc9e0f52db3416aaef9e43b9931e7d53414557c8269cd2cf132fd285"

  url "https://github.com/johannesjo/super-productivity/releases/download/v#{version}/superProductivity-#{arch}.dmg",
      verified: "github.com/johannesjo/super-productivity/"
  name "Super Productivity"
  desc "To-do list and time tracker"
  homepage "https://super-productivity.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Super Productivity.app"

  zap trash: [
    "~/Library/Application Support/superProductivity",
    "~/Library/Logs/superProductivity",
    "~/Library/Preferences/com.super-productivity.app.plist",
    "~/Library/Saved Application State/com.super-productivity.app.savedState",
  ]
end
