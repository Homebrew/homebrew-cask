cask "super-productivity" do
  arch arm: "arm64", intel: "x64"

  version "15.0.3"
  sha256 arm:   "46635ef88b7681b315b8450b5a9a472a74a1f45ab3f58e356c49c9b34c1bbbdf",
         intel: "41197a48efe61b141622d422270279bdf9c1431e7a82f15ac47b21e939cfa402"

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
