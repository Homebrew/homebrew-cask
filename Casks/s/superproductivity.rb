cask "superproductivity" do
  arch arm: "-arm64"

  version "8.0.5"
  sha256 arm:   "ea3b8f6ce5a9b2797e50aa68fddaa6ceb44248b4e668d487f90ca46a2ebd4be2",
         intel: "33dc82a996a5766810eb8bf76d73d5c35353f302f7d2e4d09a470243091a47fc"

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
