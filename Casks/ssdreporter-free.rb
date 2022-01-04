cask "ssdreporter-free" do
  version "1.6.0,1542"
  sha256 "18744721b68bfd78a8e0884d213f4a29aa123865dde12efa92fd7dc2fa1ed23a"

  url "https://www.corecode.io/downloads/ssdreporter_#{version.csv.first}.zip"
  name "SSDReporter Free"
  desc "SSD health monitoring tool"
  homepage "https://www.corecode.io/ssdreporter/"

  livecheck do
    url "https://www.corecode.io/ssdreporter/ssdreporter.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :mojave"

  app "SSDReporter Free.app"

  zap trash: [
    "~/Library/Application Scripts/com.corecode.SSDReporter",
    "~/Library/Application Scripts/com.corecode.SSDReporterLaunchHelper",
    "~/Library/Containers/com.corecode.SSDReporter",
    "~/Library/Containers/com.corecode.SSDReporterLaunchHelper",
  ]
end
