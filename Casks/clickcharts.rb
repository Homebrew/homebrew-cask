cask "clickcharts" do
  version "5.80"
  sha256 :no_check

  url "https://www.nchsoftware.com/chart/clickchartspmaci.zip",
      user_agent: :fake
  name "ClickCharts"
  homepage "https://www.nchsoftware.com/"

  livecheck do
    skip "unversioned URL"
  end

  app "ClickCharts.app"
end
