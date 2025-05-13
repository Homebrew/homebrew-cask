cask "super-productivity" do
  arch arm: "arm64", intel: "x64"

  version "13.0.1"
  sha256 arm:   "49e26cbfa842965655ad9e18a7fd3e8eb894847cd859d234461b953c50d9a947",
         intel: "bcea3ec3fb7124f242bee79894b245d5d39f39f83cc2e088c6fd8913846199c2"

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
