cask "clickcharts" do
  version "5.80"
  sha256 :no_check

  url "https://www.nchsoftware.com/chart/clickchartspmaci.zip",
      user_agent: :fake
  name "ClickCharts"
  desc "Diagram and flowchart software"
  homepage "https://www.nchsoftware.com/"

  app "ClickCharts.app"
end
