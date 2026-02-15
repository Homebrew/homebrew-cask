cask "super-productivity" do
  arch arm: "arm64", intel: "x64"

  version "17.1.8"
  sha256 arm:   "b4ac9ee9a5feccb803f8716d67b0d3b32f6a2eb34269a256d9d0cc31f3eb53d5",
         intel: "e4fa55c1b75540770a20bd1bbe7668aed8c71295fdb91c9f52836c1b104c9267"

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
