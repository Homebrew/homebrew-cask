cask "super-productivity" do
  arch arm: "arm64", intel: "x64"

  version "11.1.1"
  sha256 arm:   "9a241d1127536d89101d00b2da3f68a60d0f6cfe472a3ca809f4521652c139bc",
         intel: "a8d4bc2ccc1b22c2d2ed82a22eb02d335783a3b650c3555556493771745a1b36"

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
