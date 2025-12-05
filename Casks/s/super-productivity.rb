cask "super-productivity" do
  arch arm: "arm64", intel: "x64"

  version "16.5.0"
  sha256 arm:   "c4e6955cc152c70e66ec473fedbedb8c24660ccbb98706995bbcc8ce8fad864f",
         intel: "0a710c7f190361062581296627ef2b61667d9b8c68a990f3705c39fd47518c54"

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
