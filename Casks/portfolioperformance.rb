cask 'portfolioperformance' do
  version '0.41.1'
  sha256 'a4aaf95cb61225a39d65bb636b8ba06ff1da48c01ae133f7bce50f8d93abd262'

  # github.com/buchen/portfolio was verified as official when first introduced to the cask
  url "https://github.com/buchen/portfolio/releases/download/#{version}/PortfolioPerformance-distro-#{version}-macosx.cocoa.x86_64.tar.gz"
  appcast 'https://github.com/buchen/portfolio/releases.atom'
  name 'Portfolio Performance'
  homepage 'https://www.portfolio-performance.info/portfolio/'

  auto_updates true

  app 'PortfolioPerformance.app'

  caveats do
    depends_on_java '8+'
  end
end
