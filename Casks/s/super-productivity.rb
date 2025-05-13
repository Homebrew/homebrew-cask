cask "super-productivity" do
  arch arm: "arm64", intel: "x64"

  version "13.0.0"
  sha256 arm:   "819238b88dd5e182d7e7640b6df846e6277f24afbcac10642f46196eeead8cb7",
         intel: "f6fb0947d4fc3b9751f7792a98fd539439b68e3bcb9ded8676faad0491e24412"

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
