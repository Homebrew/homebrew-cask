cask "taskexplorer" do
  version "3.1.0"
  sha256 "536bda55f06e45bd7edc6cbed29aeb230db0f003675388a78f45d714a9ca8705"

  url "https://github.com/objective-see/TaskExplorer/releases/download/v#{version}/TaskExplorer_#{version}.zip"
  name "TaskExplorer"
  desc "Tool to explore all the running tasks (processes)"
  homepage "https://objective-see.org/products/taskexplorer.html"

  depends_on macos: :sonoma

  app "TaskExplorer.app"

  uninstall_preflight_steps do
    set_ownership "TaskExplorer.app", base: :appdir
  end

  zap trash: [
    "~/Library/Caches/com.objective-see.TaskExplorer",
    "~/Library/HTTPStorages/com.objective-see.TaskExplorer",
    "~/Library/Preferences/com.objective-see.TaskExplorer.plist",
  ]
end
