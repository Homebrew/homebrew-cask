cask "super-productivity" do
  arch arm: "arm64", intel: "x64"

  version "14.2.3"
  sha256 arm:   "eea87551e477dbf7179035fcd3c35a8644ec4f2fd9c6d3282ecea54e799ec5af",
         intel: "5e5c2fb82da3212eadf238d7236f2dbaee44c4469ffbd6918d0aebd8a37f4518"

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
