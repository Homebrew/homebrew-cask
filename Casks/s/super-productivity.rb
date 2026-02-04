cask "super-productivity" do
  arch arm: "arm64", intel: "x64"

  version "17.1.0"
  sha256 arm:   "1c79741ae07a1afbb187607c71822587fa20ea674769a45adf3bbe85f038d9dc",
         intel: "4e48e35e6fb905cafa9f5f5cbc3e221177608df56aa864eba0ed4c700076ea25"

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
