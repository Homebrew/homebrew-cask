cask "super-productivity" do
  arch arm: "arm64", intel: "x64"

  version "17.1.3"
  sha256 arm:   "059e3674f43befc728fd7bd4bb326d28c919c21262b6f5acddf306c3992d2e42",
         intel: "0eed0621e51f68d1cb39212a5b4c5165bb28405a7950046f025b04f7a2c7a20a"

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
