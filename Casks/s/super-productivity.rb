cask "super-productivity" do
  arch arm: "arm64", intel: "x64"

  version "18.3.0"
  sha256 arm:   "6534b18bb657b91ca7caf7219f2a7755db6294b7b6961fe6be02907ec5cf864c",
         intel: "f071e4b803d9b4ca9b12ba5a2f1bf3eb16e76970dfdcf328f21f19a682f7ef63"

  url "https://github.com/johannesjo/super-productivity/releases/download/v#{version}/superProductivity-#{arch}.dmg",
      verified: "github.com/johannesjo/super-productivity/"
  name "Super Productivity"
  desc "To-do list and time tracker"
  homepage "https://super-productivity.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "Super Productivity.app"

  zap trash: [
    "~/Library/Application Support/superProductivity",
    "~/Library/Logs/superProductivity",
    "~/Library/Preferences/com.super-productivity.app.plist",
    "~/Library/Saved Application State/com.super-productivity.app.savedState",
  ]
end
