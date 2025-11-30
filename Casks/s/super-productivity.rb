cask "super-productivity" do
  arch arm: "arm64", intel: "x64"

  version "16.4.3"
  sha256 arm:   "288ded9221b3ab9e3a4e58b75c9fc02905ca9b3e2aa6cf4db23cf84806d3198d",
         intel: "c3f0a547d195eef322bffbd48aaea4d11d9b18799ba0eb64629c2926e74deec5"

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
