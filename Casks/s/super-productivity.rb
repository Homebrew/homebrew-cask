cask "super-productivity" do
  arch arm: "arm64", intel: "x64"

  version "18.19.0"
  sha256 arm:   "6f856f76877491f2ff8287db4da0b8b69a407023dd8224acd98510dddaa8252d",
         intel: "41a3910c4ea25750f326d0d0629bc1ce086345fe630521cf2df2fbab5bdb5752"

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
