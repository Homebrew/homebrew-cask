cask "super-productivity" do
  arch arm: "arm64", intel: "x64"

  version "16.2.0"
  sha256 arm:   "6a4bb4c73c5bc69b7ccf68df21f4a80d85f1caad494b7f6a3dd0f59d6a90f0ca",
         intel: "0c7f8c4bd03ff86077beae64fcb91c90d9a46948bd4ee8309153fbda6bd7f79f"

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
