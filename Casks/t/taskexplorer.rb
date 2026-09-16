cask "taskexplorer" do
  version "3.0.0"
  sha256 "4a97769ce5d185c45545e1fe8b5652774baf5ec29bf41a865c5b2a7bec961a02"

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
