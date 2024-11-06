cask "super-productivity" do
  arch arm: "arm64", intel: "x64"

  version "10.1.1"
  sha256 arm:   "f44b6325cdfc32f85392ab93b56abf4884de01f5b17f1ad99c997ce4cdb07188",
         intel: "2a43adcf947ca41680de5110c6ed2864adbc5247e194afbc83f86f766f41e530"

  url "https://github.com/johannesjo/super-productivity/releases/download/v#{version}/superProductivity-#{arch}.dmg",
      verified: "github.com/johannesjo/super-productivity/"
  name "Super Productivity"
  desc "To-do list and time tracker"
  homepage "https://super-productivity.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Super Productivity.app"

  zap trash: [
    "~/Library/Application Support/superProductivity",
    "~/Library/Logs/superProductivity",
    "~/Library/Preferences/com.super-productivity.app.plist",
    "~/Library/Saved Application State/com.super-productivity.app.savedState",
  ]
end
