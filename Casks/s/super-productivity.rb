cask "super-productivity" do
  arch arm: "arm64", intel: "x64"

  version "16.8.3"
  sha256 arm:   "675da73bae7c2bbd6311cc09a7c7ea10ad4ae98184d2df23a67b1b7bda704e8f",
         intel: "9bdbbb63370acbe242a39cd085706f0ebce907b405b700f2367d22174ae738be"

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
