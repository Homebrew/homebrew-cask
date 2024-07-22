cask "superproductivity" do
  arch arm: "-arm64"

  version "9.0.4"
  sha256 arm:   "2464db6bfddb57fb292d643aa8151e842958e0dc9115334c94bb7964ef70783b",
         intel: "8226e42b476067931e5e96a0557a0af148099d53c8736bf681bdcbdbf6c17383"

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
