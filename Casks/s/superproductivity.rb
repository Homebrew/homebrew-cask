cask "superproductivity" do
  arch arm: "-arm64"

  version "10.0.4"
  sha256 arm:   "efabfcb55603bc4f366bd3208e2ed31dd900fa4eed4ef6fc5574e8080b60c584",
         intel: "0ba34d232dd74bd0dcf29abf7284f7ede3c82fc3ed78dd8a2f6b1719db634d4c"

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
