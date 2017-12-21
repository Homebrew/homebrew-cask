cask 'portfolioperformance' do
  version '0.28.4'
  sha256 'f80284655cf285b129165f9a295a177a1a7aae487a86a63248b7282a34472803'

  # s3.amazonaws.com/name.abuchen.portfolio was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/name.abuchen.portfolio/#{version}/PortfolioPerformance-#{version}-macosx.cocoa.x86_64.tar.gz"
  appcast 'https://github.com/buchen/portfolio/releases.atom',
          checkpoint: '04daeb9c984d6f5898cee870788c6216e00335c65c2b2855c25c5e007c3d14c6'
  name 'Portfolio Performance'
  homepage 'http://www.portfolio-performance.info/portfolio/'

  app 'PortfolioPerformance.app'

  caveats do
    depends_on_java('8+')
  end
end
