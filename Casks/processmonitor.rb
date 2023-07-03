cask "processmonitor" do
  version "1.5.0"
  sha256 "6c5721def426de77bff61d672d076314d89fb6bad28969f3b15b9f8c87cbd591"

  url "https://bitbucket.org/objective-see/deploy/downloads/ProcessMonitor_#{version}.zip",
      verified: "bitbucket.org/objective-see/deploy/downloads/"
  name "ProcessMonitor"
  desc "Monitor process activity"
  homepage "https://objective-see.org/products/utilities.html"

  depends_on macos: ">= :catalina"

  app "ProcessMonitor.app"
  binary "#{appdir}/ProcessMonitor.app/Contents/MacOS/ProcessMonitor", target: "processmonitor"

  zap trash: "~/Library/Caches/com.objective-see.ProcessMonitor"
end
