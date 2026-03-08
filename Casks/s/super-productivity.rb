cask "super-productivity" do
  arch arm: "arm64", intel: "x64"

  version "17.3.0"
  sha256 arm:   "441cb0e416cf6b5c14f98955571466b2e3637a650e78bee8cf45875e6c6bbc84",
         intel: "aba300d7b9d7db0977e1b97a92e74071444b3b961fba415c0c8d5e266d6b205a"

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
