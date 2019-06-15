cask 'portfolioperformance' do
  version '0.39.2'
  sha256 '3b5fed059a308283b7d25b1020ece267461b964aa034c2a07677419e2884a044'

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
