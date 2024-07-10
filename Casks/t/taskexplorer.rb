cask "taskexplorer" do
  version "2.0.2"
  sha256 "6a7085474f60648cf73bf02fdaba7985deb27b4501a2b1806097196b50ccd9ef"

  url "https://bitbucket.org/objective-see/deploy/downloads/TaskExplorer_#{version}.zip",
      verified: "bitbucket.org/objective-see/"
  name "TaskExplorer"
  desc "Tool to explore all the running tasks (processes)"
  homepage "https://objective-see.com/products/taskexplorer.html"

  app "TaskExplorer.app"

  uninstall_preflight do
    set_ownership "#{appdir}/TaskExplorer.app"
  end

  zap trash: [
    "~/Library/Caches/com.objective-see.TaskExplorer",
    "~/Library/Preferences/com.objective-see.TaskExplorer.plist",
  ]

  caveats do
    requires_rosetta
  end
end
