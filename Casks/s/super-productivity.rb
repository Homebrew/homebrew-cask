cask "super-productivity" do
  arch arm: "arm64", intel: "x64"

  version "17.5.2"
  sha256 arm:   "2ce574ce325cf8299dbce982b4f9f1ba2f7216c263012eb7a9183b19f6d3f7b7",
         intel: "a6fd5af08e3d1565f62e07ece51e614d791b6db971c879d7cda28513d964415b"

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
