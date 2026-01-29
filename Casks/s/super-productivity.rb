cask "super-productivity" do
  arch arm: "arm64", intel: "x64"

  version "17.0.11"
  sha256 arm:   "898cd9c3a2e7ed3acfeef485ad92550ae94dfa1f33aae42ad66f9ea8510a9b4b",
         intel: "1701d6741544cbcca135bf34cc5290cbf86e89e34dcf1069588bbd19ade01361"

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
