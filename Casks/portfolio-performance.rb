cask 'portfolio-performance' do
  version '0.26.3'
  sha256 :no_check

  # amazonaws.com/name.abuchen.portfolio was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/name.abuchen.portfolio/0.26.3/PortfolioPerformance-0.26.3-macosx.cocoa.x86_64.tar.gz'
  name 'Portfolio Performance'
  homepage 'http://www.portfolio-performance.info/portfolio/'

  app 'PortfolioPerformance.app'

  caveats do
    depends_on_java('8')
  end
end
