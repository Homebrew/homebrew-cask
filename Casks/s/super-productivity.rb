cask "super-productivity" do
  arch arm: "arm64", intel: "x64"

  version "18.6.0"
  sha256 arm:   "d636c816a73568b58d68345486e7c2c67f2065e4ff3f7f7cf8354e4158321f98",
         intel: "efcca1a8a0381b175a609847d1bc2fac8bd78d89eda02a300cdbbf5303588032"

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
