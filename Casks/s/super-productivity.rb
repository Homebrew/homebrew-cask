cask "super-productivity" do
  arch arm: "arm64", intel: "x64"

  version "18.2.4"
  sha256 arm:   "386a534e467a55c45f06a7810072720967da55197f309ffbeca513aeaedd6fa9",
         intel: "9d151c658c2a1dbc0711b126ee692e105bbc4dee2debf996f9e97d03275ca216"

  url "https://github.com/johannesjo/super-productivity/releases/download/v#{version}/superProductivity-#{arch}.dmg",
      verified: "github.com/johannesjo/super-productivity/"
  name "Super Productivity"
  desc "To-do list and time tracker"
  homepage "https://super-productivity.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "Super Productivity.app"

  zap trash: [
    "~/Library/Application Support/superProductivity",
    "~/Library/Logs/superProductivity",
    "~/Library/Preferences/com.super-productivity.app.plist",
    "~/Library/Saved Application State/com.super-productivity.app.savedState",
  ]
end
