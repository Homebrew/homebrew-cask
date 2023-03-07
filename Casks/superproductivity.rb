cask "superproductivity" do
  arch arm: "-arm64"

  version "7.13.1"
  sha256 arm:   "2b02f47e5cdd1e9fd8787470cdfb62dbd6d670fa2f65faa2867dde8455e5c855",
         intel: "75757c4797f48205306afb3111a55fb275918ee977fd508c955ec6a1eae94ca2"

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
