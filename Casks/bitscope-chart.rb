cask 'bitscope-chart' do
  version '2.0.FK22M'
  sha256 '23ea3dacd75b9101876df90d0c2ae11cab4b810a2af59dbc1d265874a6777035'

  url "http://bitscope.com/download/files/bitscope-chart_#{version}.app.tgz"
  name 'BitScope Chart'
  homepage 'http://www.bitscope.com/'

  app 'bitscope-chart.app'
end
