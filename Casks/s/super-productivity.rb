cask "super-productivity" do
  arch arm: "arm64", intel: "x64"

  version "15.2.0"
  sha256 arm:   "0dd0b89b7e0788849e09aa3f1de81a5096883918d9d91cc0c001b9d30e04b781",
         intel: "eab1ac2e94734364f5de7141c1ae30733e03c18f201b6862b6a0e45ccf6675f4"

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
