cask "super-productivity" do
  arch arm: "arm64", intel: "x64"

  version "18.1.3"
  sha256 arm:   "38e3afc9c1b7380f91ee583bb55776d41f2bf5f59bc0eb55e7d3a7f8bf6c1eb0",
         intel: "58cfe259651f3ce5d80e620a1b699b8a942e9922775cf05f50f587788da1d5b8"

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
