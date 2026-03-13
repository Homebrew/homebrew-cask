cask "super-productivity" do
  arch arm: "arm64", intel: "x64"

  version "17.4.1"
  sha256 arm:   "7eda6c89f2910f9e61bc084a82e9030330058549c06368b4d68b06919f1e5723",
         intel: "0acba12ad180e5d6eeb56f3f6350736a877b02a5025b2c35bb1669d3a6daeae3"

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
