cask "super-productivity" do
  arch arm: "arm64", intel: "x64"

  version "13.0.4"
  sha256 arm:   "341ad43bc97d2af7dbf10f89766572ccd4a5f5794b79bf952bf656d859b738b2",
         intel: "063d642fb2315a2556f22f277312b72c7392c86bc5e926b339bf4289530f493b"

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
