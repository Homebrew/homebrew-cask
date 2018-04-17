cask 'portfolioperformance' do
  version '0.29.0'
  sha256 'e1f5536bcd8d8b79e2e1d8056e36be8cd3fecb30387687f60c2a5ae5888aae9f'

  # s3.amazonaws.com/name.abuchen.portfolio was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/name.abuchen.portfolio/#{version}/PortfolioPerformance-#{version}-macosx.cocoa.x86_64.tar.gz"
  appcast 'https://github.com/buchen/portfolio/releases.atom',
          checkpoint: 'ec20e1315a62d45ddf35877aa052e2603862dfec05d64d883864838a4ce56731'
  name 'Portfolio Performance'
  homepage 'http://www.portfolio-performance.info/portfolio/'

  auto_updates true

  app 'PortfolioPerformance.app'

  caveats do
    depends_on_java('8+')
  end
end
