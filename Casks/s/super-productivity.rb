cask "super-productivity" do
  arch arm: "arm64", intel: "x64"

  version "14.3.4"
  sha256 arm:   "1c2614364b14d0f2ad23d38c9e63988b02459dd5c415d0559e666d06cb4fb2bd",
         intel: "81fb935e3339a432bb8fb8ac61497e55ac0fa04a686ab36fcc142c1436cf222d"

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
