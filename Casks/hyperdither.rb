cask 'hyperdither' do
  version '1.3'
  sha256 'd91952bff7faf69255c03896a26c907fca256bbad4d1444a05b75b2ebdf10785'

  url 'http://www.tinrocket.com/wp-content/plugins/download-monitor/download.php?id=1'
  name 'HyperDither'
  homepage 'http://www.tinrocket.com/hyperdither/'
  license :gratis

  app "HyperDither #{version}/HyperDither.app"
end
