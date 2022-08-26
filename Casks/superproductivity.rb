cask "superproductivity" do
  arch arm: "-arm64"

  version "7.11.6"
  sha256 arm:   "edb1f77a3642c37970637f0059336dd35234fd191d49399fdc9ac7169bbe4e83",
         intel: "359836501f40ba8b7a02af1fec5a9dacddf60780116d63a8fb1bb9e3f27a1f94"

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
