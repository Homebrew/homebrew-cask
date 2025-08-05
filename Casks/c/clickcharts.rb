cask "clickcharts" do
  version "9.50"
  sha256 :no_check

  url "https://www.nchsoftware.com/chart/clickchartspmaci.zip",
      user_agent: :fake
  name "ClickCharts"
  desc "Diagram and flowchart software"
  homepage "https://www.nchsoftware.com/"

  livecheck do
    url "https://www.nchsoftware.com/chart/versions.html"
    regex(/Version\s+v?(\d+(?:\.\d+)+)[^>]*>\s*macOS/im)
  end

  app "ClickCharts.app"

  zap trash: [
    "~/Library/Application Support/ClickCharts",
    "~/Library/Application Support/ClickChartsSubStatAbort",
    "~/Library/Caches/ClickChartsCounts.txt",
    "~/Library/LaunchAgents/com.nchsoftware.clickcharts.schedule.LikeSurvey.plist",
    "~/Library/Preferences/ByHost/com.nchsoftware.clickcharts.*.plist",
  ]

  caveats do
    requires_rosetta
  end
end
