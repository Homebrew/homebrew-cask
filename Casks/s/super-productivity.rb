cask "super-productivity" do
  arch arm: "arm64", intel: "x64"

  version "16.8.2"
  sha256 arm:   "33ef75a0055cafa5c0a2d3d8936f2bc63d97e617cb88d50e65e5670acab88a46",
         intel: "db0b9bc168a104a4aca418b3e79d861c56980a8a210b185d7edcc56478478431"

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
