cask "super-productivity" do
  arch arm: "arm64", intel: "x64"

  version "13.0.6"
  sha256 arm:   "719d3bb0affd7da69e109090187207b3f7734b7e265742a32cd0bcf68af9b3ba",
         intel: "8b4ed436b3bedd6962d3330f88d9295a1e60fcecc4439fa85290c56c73863183"

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
