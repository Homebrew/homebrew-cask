cask "ssdreporter" do
  version "1.6.0,1575"
  sha256 "d176e7c0d63d220ac061fde998cd9ad0563d437b60019bc46acd720327359cd3"

  url "https://www.corecode.io/downloads/ssdreporter_#{version.csv.first}.zip"
  name "SSDReporter"
  desc "SSD health monitoring tool"
  homepage "https://www.corecode.io/ssdreporter/"

  livecheck do
    url "https://www.corecode.io/ssdreporter/ssdreporter.xml"
    strategy :sparkle
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
