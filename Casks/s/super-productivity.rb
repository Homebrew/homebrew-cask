cask "super-productivity" do
  arch arm: "arm64", intel: "x64"

  version "14.2.5"
  sha256 arm:   "ecf6b131f91496200a3fea4009f9edefd0e77e2b646c5f1b56a11a4cde5a0de6",
         intel: "c285cb6a747aa4de1f9d270d22a239dc4bb18f8df28aa227e903411c2ec71697"

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
