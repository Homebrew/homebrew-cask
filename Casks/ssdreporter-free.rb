cask "ssdreporter-free" do
  version "1.6.0"
  sha256 "80ee61922e301cc299dece3f029ddfa6b9c94da6440e76f1eab897992b4a39af"

  url "https://www.corecode.io/downloads/ssdreporter_#{version}.zip"
  name "SSDReporter Free"
  desc "SSD health monitoring tool"
  homepage "https://www.corecode.io/ssdreporter/"

  livecheck do
    url "https://www.corecode.io/ssdreporter/ssdreporter.xml"
    strategy :sparkle, &:short_version
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
