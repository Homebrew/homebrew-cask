cask "taskpaper" do
  version "3.9.1"
  sha256 "879b791b0e62d5d29bb03b27ac19d8a6a279dbab9a5a154ebc0763bd69e0d89a"

  url "https://www.taskpaper.com/assets/app/TaskPaper-#{version}.dmg"
  name "TaskPaper"
  desc "App to make lists and help with organisation"
  homepage "https://www.taskpaper.com/"

  livecheck do
    url "https://www.taskpaper.com/assets/app/TaskPaper.rss"
    strategy :sparkle, &:short_version
  end

  auto_updates true

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
