cask "superproductivity" do
  arch arm: "-arm64"

  version "7.15.0"
  sha256 arm:   "e96761361fe25763889dcb4fa54dca6b2fece4d2341b70904953e5fbb58d6fb2",
         intel: "f94ccc38ed7b1ec9b5d118b76ef6a5baf1707ecb9983709710f3516f72dd67e1"

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
