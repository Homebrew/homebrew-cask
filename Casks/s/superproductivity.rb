cask "superproductivity" do
  arch arm: "-arm64"

  version "7.17.2"
  sha256 arm:   "b15bfcdc41170242cb894871af51d1d1d1162cae270b568c689d7ef25be9dbc1",
         intel: "7aff6c7aaa930dce9cb7c656b8fe67cc70d82b628a8c789fb0dacd6f67950258"

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
