cask "superproductivity" do
  arch arm: "-arm64"

  version "8.0.10"
  sha256 arm:   "ff2d9f06958ab0ad09318e3fe009f5ebae5264c76ee8f58947b7735ddeda43a4",
         intel: "9e160d9a4d5d823406b03cceb7ed074865643b48c693eb7d80f3c8e2486d93b8"

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
