cask "taskpaper" do
  version "3.9.4"
  sha256 "7f392d83857d96d5ee3c2a0792e8a24befb5094928ce850283da86bfa0684f7e"

  url "https://www.taskpaper.com/assets/app/TaskPaper-#{version}.dmg"
  name "TaskPaper"
  desc "App to make lists and help with organisation"
  homepage "https://www.taskpaper.com/"

  livecheck do
    url "https://www.taskpaper.com/assets/app/TaskPaper.rss"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "TaskPaper.app"

  zap trash: [
    "~/Library/Application Scripts/com.hogbaysoftware.TaskPaper#{version.major}.direct",
    "~/Library/Application Support/TaskPaper",
    "~/Library/Caches/com.hogbaysoftware.TaskPaper#{version.major}.direct",
    "~/Library/HTTPStorages/com.hogbaysoftware.TaskPaper#{version.major}*",
    "~/Library/Preferences/com.hogbaysoftware.TaskPaper#{version.major}.direct.plist",
    "~/Library/Saved Application State/com.hogbaysoftware.TaskPaper#{version.major}.direct.savedState",
  ]
end
