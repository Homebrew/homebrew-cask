cask 'clickcharts' do
  version :latest
  sha256 :no_check

  url 'http://www.nchsoftware.com/chart/clickchartspmaci.zip'
  name 'ClickCharts'
  homepage 'http://www.nchsoftware.com/'

  container nested: 'ClickCharts_i.dmg'

  app 'ClickCharts.app'
end
