cask 'bitscope-chart' do
  version '1.1.DC01G'
  sha256 'e7c2900281cf289e6ae458a04c8435024aa526ef2df8d0b17874e71f9c92c3a8'

  url "http://bitscope.com/download/files/bitscope-chart_#{version}.app.tgz"
  name 'BitScope Chart'
  homepage 'http://www.bitscope.com'
  license :gratis

  app 'bitscope-chart.app'
end
