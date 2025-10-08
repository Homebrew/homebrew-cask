cask "super-productivity" do
  arch arm: "arm64", intel: "x64"

  version "15.1.1"
  sha256 arm:   "242523a4f9a13b46af822e2b048821a9647d3dc2126a328d95d47497ed0464f8",
         intel: "85bd84c8e16e79a384a4da30b65b3cd0ba7c92ebfcee55a16cd6219240c7d346"

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
