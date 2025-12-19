cask "super-productivity" do
  arch arm: "arm64", intel: "x64"

  version "16.7.2"
  sha256 arm:   "0ed57065ad0b0762ed47ae0a18e00f3742450769aa61f6d42448a47ce3466fc8",
         intel: "d51f9a39719be0bed42d34c5abfc96d3969162688184bc4b90369ce1718a72ee"

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
