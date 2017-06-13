cask 'portfolioperformance' do
  version '0.27.1'
  sha256 '6cb8c9c334eca5dc0fd0fe56a875ab61d1da7b768716b505d74f17edf568eb08'

  # s3.amazonaws.com/name.abuchen.portfolio was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/name.abuchen.portfolio/#{version}/PortfolioPerformance-#{version}-macosx.cocoa.x86_64.tar.gz"
  appcast 'https://github.com/buchen/portfolio/releases.atom',
          checkpoint: '44817467c163087f005fa958f5240b3d3662dfd33f0be799d2d4ebd9f2e1d485'
  name 'Portfolio Performance'
  homepage 'http://www.portfolio-performance.info/portfolio/'

  app 'PortfolioPerformance.app'

  caveats do
    depends_on_java('8')
  end
end
