cask "super-productivity" do
  arch arm: "arm64", intel: "x64"

  version "17.0.12"
  sha256 arm:   "c41f7ba2db2526f957f5c35dfea73d885d3f7f7236d65c2c58ea6ad67fa57b35",
         intel: "9240749b987d8b18c952134dd3372a26e690f55fb547a870aa1318f4df8a98ac"

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
