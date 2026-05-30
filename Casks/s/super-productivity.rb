cask "super-productivity" do
  arch arm: "arm64", intel: "x64"

  version "18.8.0"
  sha256 arm:   "7c94258f5ed903c74fa96c57d56951aeb13f2b3d5c149b46cafb9134b980645d",
         intel: "e31b4fdb59ba9680c177337088ecf326452e3be5fe6b372b8b0453c1dedc18a9"

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
