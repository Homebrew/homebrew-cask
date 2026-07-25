cask "super-productivity" do
  arch arm: "arm64", intel: "x64"

  version "18.16.0"
  sha256 arm:   "ac5335d334e47842fc0a090207b0e115873617d4c56afe123ad9baa6a1738b2a",
         intel: "61b590b32f4c9e5b6680a9375eec9aac51000693716c2aa2c85bc3c63e46e98b"

  url "https://github.com/super-productivity/super-productivity/releases/download/v#{version}/superProductivity-#{arch}.dmg",
      verified: "github.com/super-productivity/super-productivity/"
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
