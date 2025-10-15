cask "super-productivity" do
  arch arm: "arm64", intel: "x64"

  version "15.3.0"
  sha256 arm:   "16a84d7347f5843693673f9c9c4c2e72aeba8591c6500023e6dc4c9f04950fde",
         intel: "2740cd5cf95ae0158b967d0167411ff3c8115452581faa06f8a1fd261acb1631"

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
