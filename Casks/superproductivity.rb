cask "superproductivity" do
  arch arm: "-arm64"

  version "7.13.2"
  sha256 arm:   "80aac9800dd6593c1555d1050552cd01b4124b490d752ea66d6ee55d64002e57",
         intel: "35ca85104d7e69dc9bbc23b11ab4ee7a335a55bb8b0a16adb8349392ec034fe1"

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
