cask "todoist" do
  arch arm: "arm64", intel: "x64"

  version "9.16.1"
  sha256 arm:   "70ad8339fcf9aa0d6ccc675cf83e04aded92a2e18a1d8fd6ba341e8e801c1808",
         intel: "2e5461d818c0a876322dc109333521dcc49a5732639a10c60d8c0b1e2cce3fc8"

  url "https://electron-dl.todoist.com/mac/Todoist-darwin-#{version}-#{arch}-latest.dmg"
  name "Todoist"
  desc "To-do list"
  homepage "https://todoist.com/home"

  livecheck do
    url "https://electron-dl.todoist.com/mac/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :catalina"

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
