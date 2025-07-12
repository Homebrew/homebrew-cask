cask "super-productivity" do
  arch arm: "arm64", intel: "x64"

  version "14.1.0"
  sha256 arm:   "679cb1e2b360771ef6745790db3b34cac7f7ac2e5bf15545616f31f57518fbc7",
         intel: "930b2ed7b9329e7523ef066ff929b2a024cf8c4f0cd7263ce97a720a275d68f6"

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
