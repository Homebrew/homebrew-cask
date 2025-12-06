cask "super-productivity" do
  arch arm: "arm64", intel: "x64"

  version "16.5.3"
  sha256 arm:   "2ab7c319aca0d569c625c8d09ae2adba02dd95a270147ef10598f602dc933c73",
         intel: "13d57f3434ed0fedc99a9589847e7bbdf1670ee0ac7cd795870d00824b0b596d"

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
