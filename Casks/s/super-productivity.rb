cask "super-productivity" do
  arch arm: "arm64", intel: "x64"

  version "11.0.3"
  sha256 arm:   "16b16dba5c5edec82fea45af9e60e1997914c69511e49eb3cb4cc2580ab3feb5",
         intel: "e6873533bebe8a52dfd9e8d5dbc47a63fe7925e352801fc0054c1951cb1aec71"

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
