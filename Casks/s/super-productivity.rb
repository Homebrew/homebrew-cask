cask "super-productivity" do
  arch arm: "arm64", intel: "x64"

  version "13.0.7"
  sha256 arm:   "399418a3a31d6471d82cfc843872c4bed5844eba1a084824fd2e8f09d07a8f1d",
         intel: "4bb61914263b876f71d692d1e3a92b63adfb44e50f80f15d512b36cafdd23058"

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
