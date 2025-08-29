cask "super-productivity" do
  arch arm: "arm64", intel: "x64"

  version "14.4.0"
  sha256 arm:   "655c902e023c7b253ed3826db4a9023699eed98e5bf554465f0a4e5f23ecd1fc",
         intel: "1da83dcd2d3dfa2e3d4754d82d3d10dab74111ab413e318baa7f40902b968667"

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
