cask 'portfolioperformance' do
  version '0.27.3'
  sha256 'ff9993e00dd5bcb448e39758e91470727461b816556e37371993182780fc7a3f'

  # s3.amazonaws.com/name.abuchen.portfolio was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/name.abuchen.portfolio/#{version}/PortfolioPerformance-#{version}-macosx.cocoa.x86_64.tar.gz"
  appcast 'https://github.com/buchen/portfolio/releases.atom',
          checkpoint: '72a8026a0bd28f1ca392bc18730b8f922933439efda89135c777ea661ce693b5'
  name 'Portfolio Performance'
  homepage 'http://www.portfolio-performance.info/portfolio/'

  app 'PortfolioPerformance.app'

  caveats do
    depends_on_java('8')
  end
end
