cask "super-productivity" do
  arch arm: "arm64", intel: "x64"

  version "16.6.1"
  sha256 arm:   "611cb88d3a0c69d42f56666530a4b55353462b5685e845b6fc611fc50a6d7b25",
         intel: "1e971deca52b5db44fafb779a903acd8ce114d23fa5b5c2364780112f81785e9"

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
