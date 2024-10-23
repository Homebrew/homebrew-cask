cask "taskpaper" do
  version "3.9.2"
  sha256 "06e1797fc4be201f8d71511df8603775206854ea2daecaadda182bb36ce3d7f5"

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
