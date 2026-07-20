cask "super-productivity" do
  arch arm: "arm64", intel: "x64"

  version "18.15.1"
  sha256 arm:   "0e7382260d0afba7bcb557038ee750270122d201756337bcec9081d701076591",
         intel: "78e000594fe4e52f4f0a137217deea4085547bd6af08608bd50017a0a34d590a"

  url "https://github.com/super-productivity/super-productivity/releases/download/v#{version}/superProductivity-#{arch}.dmg",
      verified: "github.com/super-productivity/super-productivity/"
  name "Super Productivity"
  desc "To-do list and time tracker"
  homepage "https://super-productivity.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "Super Productivity.app"

  zap trash: [
    "~/Library/Application Support/superProductivity",
    "~/Library/Logs/superProductivity",
    "~/Library/Preferences/com.super-productivity.app.plist",
    "~/Library/Saved Application State/com.super-productivity.app.savedState",
  ]
end
