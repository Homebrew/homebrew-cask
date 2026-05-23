cask "super-productivity" do
  arch arm: "arm64", intel: "x64"

  version "18.7.0"
  sha256 arm:   "14630186ff5836c2c9c8ca0ded2386f11f53a3ce6bdaea0a428fdc092864e71b",
         intel: "4d978c08b8ec5fbc723a13374e135d6b7b356da0c90a3f0306e7b7d1ef9a8fd8"

  url "https://github.com/johannesjo/super-productivity/releases/download/v#{version}/superProductivity-#{arch}.dmg",
      verified: "github.com/johannesjo/super-productivity/"
  name "Super Productivity"
  desc "To-do list and time tracker"
  homepage "https://super-productivity.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "Super Productivity.app"

  zap trash: [
    "~/Library/Application Support/superProductivity",
    "~/Library/Logs/superProductivity",
    "~/Library/Preferences/com.super-productivity.app.plist",
    "~/Library/Saved Application State/com.super-productivity.app.savedState",
  ]
end
