cask "super-productivity" do
  arch arm: "arm64", intel: "x64"

  version "14.2.6"
  sha256 arm:   "728fbe4df21c66f3988825ec2558bac1c13fab83bc32054ff37bc1f105a227cf",
         intel: "7c557761f969061b464ec8f4db0df8216e8cc8038026f0ce8bd5cc898111de30"

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
