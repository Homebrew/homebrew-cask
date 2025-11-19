cask "super-productivity" do
  arch arm: "arm64", intel: "x64"

  version "16.3.5"
  sha256 arm:   "59b55aa3251bd84a58381c7d031e5467d3ff96db263e082c8c57af623e6e0473",
         intel: "1803970d70eb11f9b3ae9f783826072a83a9034db822a27a09e5ce5b7f61d97f"

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
