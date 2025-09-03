cask "super-productivity" do
  arch arm: "arm64", intel: "x64"

  version "14.5.0"
  sha256 arm:   "64e03d3ae45cdae29c4c68e6e41b862f3ebf93b5ca4b48050c1a04ef8fb66ac0",
         intel: "837e54492eb013e7a0e7dfb4add48a7042f20961c2975e08c492ff0c38174470"

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
