cask "super-productivity" do
  arch arm: "arm64", intel: "x64"

  version "13.0.9"
  sha256 arm:   "8c8fe15008f8c24e0fc317e4f39345a83f1618f66a7458bc392d0b53139d0fa8",
         intel: "687bb726e529de04857b31bbcff9c020e0766680b4302a3a6f29c965b3f03584"

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
