cask "todoist-app" do
  arch arm: "arm64", intel: "x64"

  version "9.18.0"
  sha256 arm:   "69251f1de84296be58d4c3922fd1a9b3531e26a02f7823163a148e9827e7ed84",
         intel: "fc776d5cb8bc9b1b1e5cbcf4c0493a0d186f6e02f5dcaa82a9499e81ac3c2fb8"

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
