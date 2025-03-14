cask "super-productivity" do
  arch arm: "arm64", intel: "x64"

  version "12.0.1"
  sha256 arm:   "2d7d6ec9dacd3cc8de5fb1f1a7817fd26cf335eee88efa4102506bc307aeb5c8",
         intel: "0592a292181693d24b00662f2a85f657416856b7ca5171ff8ffaa7023c80ecd3"

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
