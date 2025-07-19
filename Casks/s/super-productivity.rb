cask "super-productivity" do
  arch arm: "arm64", intel: "x64"

  version "14.2.1"
  sha256 arm:   "69573098455fd7ca422fe505203a5f1298e860d2b73149eaafd8b1cbc765778a",
         intel: "09ddbbc8ec2187704730f54e625a59e2734996f27db6dec55ebc7c9b7bf4d6f2"

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
