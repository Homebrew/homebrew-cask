cask "super-productivity" do
  arch arm: "arm64", intel: "x64"

  version "18.2.1"
  sha256 arm:   "c25ff37bc8c46a67afeed3bf8be03ec3be4d60ab730a2d9718423c1b100e93c0",
         intel: "a0dde794127d71b6280abdbf3033e2ccdc3881f17049b58b19c58911bbdeaa39"

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
