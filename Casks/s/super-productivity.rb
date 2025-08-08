cask "super-productivity" do
  arch arm: "arm64", intel: "x64"

  version "14.3.2"
  sha256 arm:   "7be7289678cc7af0ec01c7c4148a47b986f838d50c75209481725ce8f1035e00",
         intel: "2f03f36bdff885a6f7bc49e48ba556153e6fb8f859e3e7f8b92974026e511661"

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
