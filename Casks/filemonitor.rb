cask "filemonitor" do
  version "1.3.0"
  sha256 "0c2317ba192ec7f768a51787e7486f60a04ddee42071e9168af9b8454fe762b7"

  url "https://bitbucket.org/objective-see/deploy/downloads/FileMonitor_#{version}.zip",
      verified: "bitbucket.org/objective-see/deploy/downloads/"
  name "FileMonitor"
  desc "Monitor filesystem activity"
  homepage "https://objective-see.org/products/utilities.html"

  depends_on macos: ">= :catalina"

  app "FileMonitor.app"
  binary "#{appdir}/FileMonitor.app/Contents/MacOS/FileMonitor", target: "filemonitor"

  zap trash: "~/Library/Caches/com.objective-see.FileMonitor"
end
