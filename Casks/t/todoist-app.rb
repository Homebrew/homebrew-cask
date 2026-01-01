cask "todoist-app" do
  arch arm: "arm64", intel: "x64"

  version "9.26.1"
  sha256 arm:   "6941ac8a22b0f8a027d8787649978162d368dae5a2d9bd922f92a8fc5b5fc7c8",
         intel: "ccb94d8a720298539af17a1aba01113ab21fa96e124bce69f11f7b17c643f72c"

  url "https://electron-dl.todoist.com/mac/Todoist-darwin-#{version}-#{arch}-latest.dmg"
  name "Todoist"
  desc "To-do list"
  homepage "https://todoist.com/home"

  livecheck do
    url "https://electron-dl.todoist.com/mac/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :monterey"

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
