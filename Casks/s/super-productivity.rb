cask "super-productivity" do
  arch arm: "arm64", intel: "x64"

  version "15.1.0"
  sha256 arm:   "cab80624e3bf1a54541e13c10647fb8ad1baad8f626137b0b31122f4752d6df6",
         intel: "97a6debee7c0f2fc4f0c5a6f770e08217c0ba50cf41c741c99ad8dd922a8087d"

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
