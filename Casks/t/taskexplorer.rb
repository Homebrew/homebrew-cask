cask "taskexplorer" do
  version "3.1.1"
  sha256 "5a7304eb195da7c935f4f5fc01c77e87c72de3a3c499fe78d0ca728a22627cae"

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
