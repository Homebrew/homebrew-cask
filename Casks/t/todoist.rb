cask "todoist" do
  arch arm: "arm64", intel: "x64"

  version "9.9.4"
  sha256 arm:   "e1c3f6033bedb31297b2194099e288b4c7103c5e9f93a694bfcc8eb9d25b1a7c",
         intel: "2dab813ec1c58d0107824a71da4b978fc45571cc3ff365fffe0094d1bf78610f"

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
