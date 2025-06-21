cask "super-productivity" do
  arch arm: "arm64", intel: "x64"

  version "13.1.2"
  sha256 arm:   "ce03d02719c7408e65151198729780a3afaeef1b2cf862a7e95a6e1dde029dc8",
         intel: "5146de1633d9cf993f16cba295fbf88040eb9178d103ad34df5baae7e8ee6ca8"

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
