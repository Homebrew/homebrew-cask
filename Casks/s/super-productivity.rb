cask "super-productivity" do
  arch arm: "arm64", intel: "x64"

  version "16.5.4"
  sha256 arm:   "bb5b8fc40ee5419b20dfb94d6303aa448d83de7ae35bbeeb7e14ec8acf2679c4",
         intel: "cf9bf50a828f31cea4fbfb133997c131c9ca6eed5c5b2c796916eb914a976897"

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
