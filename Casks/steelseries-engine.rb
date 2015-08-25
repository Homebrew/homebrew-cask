cask :v1 => 'steelseries-engine' do
  version '3.4.3'
  sha256 'b7723aca601080fb734651a7f898ab31dd51ca29f03edb7362f79c90a14909c6'

  url "http://downloads.steelseriescdn.com/drivers/engine/SteelSeriesEngine#{version}.pkg"
  name 'SteelSeries Engine 3'
  homepage 'http://steelseries.com/engine'
  license :gratis

  pkg "SteelSeriesEngine#{version}.pkg"
end
