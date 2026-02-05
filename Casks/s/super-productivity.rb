cask "super-productivity" do
  arch arm: "arm64", intel: "x64"

  version "17.1.2"
  sha256 arm:   "8de203d91d9fda5fc3cad9252491187053c682464ce49e615054ba7e097af573",
         intel: "fefa7ac98eaf7aa810971f1efd5e268a73d7149c5ed91724f25e129243a36de7"

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
