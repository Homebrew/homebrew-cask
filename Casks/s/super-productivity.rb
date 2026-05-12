cask "super-productivity" do
  arch arm: "arm64", intel: "x64"

  version "18.5.0"
  sha256 arm:   "19c1e85134489a6890ec65d407345e5f06a9d5bfa7e46991fcb2a19e178a9ae2",
         intel: "63829a07e544d389685cf632587fe2d7dd58bfd9734447335a88994a3c41e263"

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
