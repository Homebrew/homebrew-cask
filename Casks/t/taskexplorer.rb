cask "taskexplorer" do
  version "2.1.0"
  sha256 "bf509f14cabdadaa81bc3509d195b8646ee203ceba15aba26d26c6b882422ccd"

  url "https://github.com/objective-see/TaskExplorer/releases/download/v#{version}/TaskExplorer_#{version}.zip",
      verified: "github.com/objective-see/"
  name "TaskExplorer"
  desc "Tool to explore all the running tasks (processes)"
  homepage "https://objective-see.org/products/taskexplorer.html"

  depends_on macos: ">= :big_sur"

  app "TaskExplorer.app"

  uninstall_preflight do
    set_ownership "#{appdir}/TaskExplorer.app"
  end

  zap trash: [
    "~/Library/Caches/com.objective-see.TaskExplorer",
    "~/Library/HTTPStorages/com.objective-see.TaskExplorer",
    "~/Library/Preferences/com.objective-see.TaskExplorer.plist",
  ]
end
