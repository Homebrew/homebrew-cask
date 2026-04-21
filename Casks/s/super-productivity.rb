cask "super-productivity" do
  arch arm: "arm64", intel: "x64"

  version "18.2.7"
  sha256 arm:   "34181494fc941fe711298e54642d039a4cf9e7859b90cf4cf1ea9be0ee216074",
         intel: "19d4cd61615c55da89d9b7eac315122363ce5d35d3e554d8cfa52480e1d30fdf"

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
