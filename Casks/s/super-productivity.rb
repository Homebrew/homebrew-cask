cask "super-productivity" do
  arch arm: "arm64", intel: "x64"

  version "18.14.0"
  sha256 arm:   "3fab5cd07a00d5edab1ae9c10e121e85114cadbbe4310010ed6f730ee12e6798",
         intel: "1a76579c7c18aeeccf6f6cc1a147c228738806905add09c0afa813b9b038cd4b"

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
