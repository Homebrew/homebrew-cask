cask "superproductivity" do
  arch arm: "-arm64"

  version "10.0.1"
  sha256 arm:   "672ee9715438e34e18b28adb7d78d18142ac979f2aa7e5587623e8e4f4762552",
         intel: "390c2f1b64203c0c7bb4b307556ef619f282083ce3634cb18c4c8bd8ba00e780"

  url "https://github.com/johannesjo/super-productivity/releases/download/v#{version}/superProductivity-#{version}#{arch}.dmg",
      verified: "github.com/johannesjo/super-productivity/"
  name "Super Productivity"
  desc "To-do list and time tracker"
  homepage "https://super-productivity.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "superProductivity.app"

  zap trash: [
    "~/Library/Application Support/superProductivity",
    "~/Library/Logs/superProductivity",
    "~/Library/Preferences/com.super-productivity.app.plist",
    "~/Library/Saved Application State/com.super-productivity.app.savedState",
  ]
end
