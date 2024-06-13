cask "superproductivity" do
  arch arm: "-arm64"

  version "8.0.9"
  sha256 arm:   "47310897a42c4e5c47fde98500202fb9c79759a7f794d42e0099ed28c0488627",
         intel: "72975b554bb6ed31abea6bd4edd7ac53e6d794d23bb3f0dfd10dd9557626d098"

  url "https://github.com/johannesjo/super-productivity/releases/download/v#{version}/superProductivity-#{version}#{arch}.dmg",
      verified: "github.com/johannesjo/super-productivity/"
  name "Super Productivity"
  desc "To-do list and time tracker"
  homepage "https://super-productivity.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "superProductivity.app"

  zap trash: [
    "~/Library/Application Support/superProductivity",
    "~/Library/Logs/superProductivity",
    "~/Library/Preferences/com.super-productivity.app.plist",
    "~/Library/Saved Application State/com.super-productivity.app.savedState",
  ]
end
