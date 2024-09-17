cask "todoist" do
  arch arm: "arm64", intel: "x64"

  version "9.7.6"
  sha256 arm:   "f7d4c26e1e70a6719512d06a4749bf01c0bff5e67d1bdbe43d17a4c4710cff8f",
         intel: "7fde14d071109f0a9ae2d8f2575736138c3f8141956231c6447df8194beebda3"

  url "https://electron-dl.todoist.com/mac/Todoist-darwin-#{version}-#{arch}-latest.dmg"
  name "Todoist"
  desc "To-do list"
  homepage "https://todoist.com/home"

  livecheck do
    url "https://electron-dl.todoist.com/mac/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :el_capitan"

  app "Todoist.app"

  zap trash: [
    "~/Library/Application Scripts/*com.todoist.mac*",
    "~/Library/Application Support/Todoist",
    "~/Library/Containers/com.todoist.mac.Todoist*",
    "~/Library/Group Containers/*com.todoist.mac*",
    "~/Library/Logs/Todoist",
    "~/Library/Preferences/com.todoist.mac.Todoist.plist",
    "~/Library/Saved Application State/com.todoist.mac.Todoist.savedState",
  ]
end
