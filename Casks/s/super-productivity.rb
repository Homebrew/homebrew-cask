cask "super-productivity" do
  arch arm: "arm64", intel: "x64"

  version "17.0.6"
  sha256 arm:   "bea791f1cd714c8d1091eeb91ad96dcd565e9865e2b19eeeb33f4a97211d7028",
         intel: "410b14fa56d8f58a519525d9bbb79448e36f4f0b811bd216decef9a71c7e76d5"

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
