cask "super-productivity" do
  arch arm: "arm64", intel: "x64"

  version "17.1.6"
  sha256 arm:   "b6e818d1a8207c262afad5b553816d0049bacd7093e7c551fcf77f8738b4cd0c",
         intel: "bf8c4e3e9ecfcd1b128d37b9759ceffc714b61eddf25b064cc2bd75fdcda83f6"

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
