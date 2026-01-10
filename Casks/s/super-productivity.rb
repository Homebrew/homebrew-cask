cask "super-productivity" do
  arch arm: "arm64", intel: "x64"

  version "16.9.4"
  sha256 arm:   "feccad60f58351cf97061fc28e482f36798a877fa081f296d4a637b5edb65485",
         intel: "bdda0a49958593b5a1d70c95bc6b890480d59c87ecaa7a4e31038a6c17bcdd5b"

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
