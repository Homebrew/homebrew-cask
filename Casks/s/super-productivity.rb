cask "super-productivity" do
  arch arm: "arm64", intel: "x64"

  version "16.3.0"
  sha256 arm:   "dbd47b691029b8fef1413dd585f68a8d155c70ea043561938f874240526c4a3a",
         intel: "0fb2d5ecaf622fc6fa5b6376176227b4e9ef22d81e159a61b68f4a057fe1eec6"

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
