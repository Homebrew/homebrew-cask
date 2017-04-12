cask 'portfolioperformance' do
  version '0.26.3'
  sha256 '542c7893acf298373260785d219b80b342a7037681079125c204e02b6e6da004'

  # s3.amazonaws.com/name.abuchen.portfolio was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/name.abuchen.portfolio/#{version}/PortfolioPerformance-#{version}-macosx.cocoa.x86_64.tar.gz"
  name 'Portfolio Performance'
  homepage 'http://www.portfolio-performance.info/portfolio/'

  app 'PortfolioPerformance.app'

  caveats do
    depends_on_java('8')
  end
end
