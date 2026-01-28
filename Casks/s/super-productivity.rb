cask "super-productivity" do
  arch arm: "arm64", intel: "x64"

  version "17.0.9"
  sha256 arm:   "aab0189327273a00b6a55f21d25de53019236b18ec52417f0a9fcc5bbdef3ac7",
         intel: "30203f8ef46aaae0c3a06586c0370af8fcfb6d8c6b81d2f726e5ec0489b3c1e0"

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
