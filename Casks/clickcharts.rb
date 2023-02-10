cask "clickcharts" do
  version "6.93"
  sha256 :no_check

  url "https://www.nchsoftware.com/chart/clickchartspmaci.zip",
      user_agent: :fake
  name "ClickCharts"
  desc "Diagram and flowchart software"
  homepage "https://www.nchsoftware.com/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "ClickCharts.app"
end
