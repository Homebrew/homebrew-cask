cask "super-productivity" do
  arch arm: "arm64", intel: "x64"

  version "18.21.1"
  sha256 arm:   "724378379f5a9dad54f4649779c9b25d77baece52885d29d1536fc0fcd5ae620",
         intel: "c40976ce8da16354b58fa09a190e1439fcbcee97d4ac5e945abff76ccca58041"

  url "https://github.com/super-productivity/super-productivity/releases/download/v#{version}/superProductivity-#{arch}.dmg"
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
