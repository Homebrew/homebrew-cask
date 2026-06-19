cask "super-productivity" do
  arch arm: "arm64", intel: "x64"

  version "18.11.0"
  sha256 arm:   "632f1515505a98274bdf30ac01fba6d1422a6dfea6c2479765ae427eac48ada4",
         intel: "1c402fced853eaf662776d328ae7fec04cd911f039da51debaef9906e13674f5"

  url "https://github.com/johannesjo/super-productivity/releases/download/v#{version}/superProductivity-#{arch}.dmg",
      verified: "github.com/johannesjo/super-productivity/"
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
