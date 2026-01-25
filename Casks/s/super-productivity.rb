cask "super-productivity" do
  arch arm: "arm64", intel: "x64"

  version "17.0.2"
  sha256 arm:   "156ead71167de6dd3826b4728d7f794f3e161de8fca75a372a79ef794dfc4716",
         intel: "a087da6f848b7cbaac22baafb5dd276c52c891ba2b620ee75e5389592f273054"

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
