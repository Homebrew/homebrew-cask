cask "super-productivity" do
  arch arm: "arm64", intel: "x64"

  version "17.0.0"
  sha256 arm:   "efa8b99685d97aefd86b316a52d9e9c774a62f6709ba4e44f331cf8df901c3d1",
         intel: "866547dd67202c72451a7ae1df850abd988a3e3a47569b78d604fbd86f005a94"

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
