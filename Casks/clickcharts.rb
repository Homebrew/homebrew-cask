cask 'clickcharts' do
  version :latest
  sha256 :no_check

  url 'http://www.nchsoftware.com/chart/clickchartspmaci.zip',
      user_agent: :fake
  name 'ClickCharts'
  homepage 'http://www.nchsoftware.com/'

  app 'ClickCharts.app'
end
