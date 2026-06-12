cask "super-productivity" do
  arch arm: "arm64", intel: "x64"

  version "18.10.0"
  sha256 arm:   "b341d66522fdae920de122e0415428365dd62b291924dbe67abf98541d15a35a",
         intel: "5fba13c19a04a8ac0655baa01172eb28b37a83a378f9a75473c56696bcf73f34"

  url "https://github.com/johannesjo/super-productivity/releases/download/v#{version}/superProductivity-#{arch}.dmg",
      verified: "github.com/johannesjo/super-productivity/"
  name "Super Productivity"
  desc "To-do list and time tracker"
  homepage "https://super-productivity.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "Super Productivity.app"

  zap trash: [
    "~/Library/Application Support/superProductivity",
    "~/Library/Logs/superProductivity",
    "~/Library/Preferences/com.super-productivity.app.plist",
    "~/Library/Saved Application State/com.super-productivity.app.savedState",
  ]
end
