cask "super-productivity" do
  arch arm: "arm64", intel: "x64"

  version "12.0.0"
  sha256 arm:   "fde5f4b9f678cf3580a8f514c98b38340f6c6c44861abac152860c14726cef9e",
         intel: "be11c54fcf0e0eedf63d24a900654f7fcc1fe2425f5335e2875b39b33403ff60"

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
