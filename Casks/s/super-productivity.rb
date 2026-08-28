cask "super-productivity" do
  arch arm: "arm64", intel: "x64"

  version "18.21.0"
  sha256 arm:   "b6248a051dfdd68f9022b81677cd2a472312df8d21624b1a96bd23d6010ea5d1",
         intel: "c3befb6d93e9105acface6500e0e38d3bfa3aaf81f34f2b15946953c9def3f93"

  url "https://github.com/super-productivity/super-productivity/releases/download/v#{version}/superProductivity-#{arch}.dmg",
      verified: "github.com/super-productivity/super-productivity/"
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
