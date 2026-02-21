cask "super-productivity" do
  arch arm: "arm64", intel: "x64"

  version "17.2.1"
  sha256 arm:   "d27b9be5c70cc9a8b013823adb835366b580e647601c6ae39500e3a4f0b44426",
         intel: "abefec109c35f605b59c6ce123e8cf6260094d2dc94aa26fd32c4fb0e811d5c6"

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
