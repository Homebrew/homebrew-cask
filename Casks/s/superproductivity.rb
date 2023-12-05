cask "superproductivity" do
  arch arm: "-arm64"

  version "7.15.1"
  sha256 arm:   "f8eaa24b921da3e07dbbae1a685e4361405feb6b0f2ebec5554cc13c49354503",
         intel: "c8c19e8ce98d211b5a9fe1f92aa4257f3d520c5673ca9602d593be3a3caafc31"

  url "https://github.com/johannesjo/super-productivity/releases/download/v#{version}/superProductivity-#{version}#{arch}.dmg",
      verified: "github.com/johannesjo/super-productivity/"
  name "Super Productivity"
  desc "To-do list and time tracker"
  homepage "https://super-productivity.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "superProductivity.app"

  zap trash: [
    "~/Library/Application Support/superProductivity",
    "~/Library/Logs/superProductivity",
    "~/Library/Preferences/com.super-productivity.app.plist",
    "~/Library/Saved Application State/com.super-productivity.app.savedState",
  ]
end
