cask "super-productivity" do
  arch arm: "arm64", intel: "x64"

  version "16.2.1"
  sha256 arm:   "2df7131d0c823b5f30f41fa7f009d5a5f76aa8aea5492e5f55527e1130bea79d",
         intel: "93afa309965b58be9f2932b04af685768d080575b73734767fff72c611330490"

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
