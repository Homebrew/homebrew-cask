cask "ssdreporter-free" do
  version "1.6.1"
  sha256 "7a09701b721088ea28ef3a3906cccc66b754f8d3bdd200674d333716a1d4f576"

  url "https://www.corecode.io/downloads/ssdreporter_#{version}.zip"
  name "SSDReporter Free"
  desc "SSD health monitoring tool"
  homepage "https://www.corecode.io/ssdreporter/"

  livecheck do
    url "https://www.corecode.io/ssdreporter/ssdreporter.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :mojave"

  app "SSDReporter.app"

  zap trash: [
    "~/Library/Application Scripts/com.corecode.SSDReporter",
    "~/Library/Application Scripts/com.corecode.SSDReporterLaunchHelper",
    "~/Library/Containers/com.corecode.SSDReporter",
    "~/Library/Containers/com.corecode.SSDReporterLaunchHelper",
  ]
end
