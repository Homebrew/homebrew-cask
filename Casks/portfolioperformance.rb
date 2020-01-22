cask 'portfolioperformance' do
  version '0.44.0'
  sha256 '18039901e373bf04d05ab947cac720a8573f43b12f6f4c43e8a0a49aa2dec82e'

  # github.com/buchen/portfolio was verified as official when first introduced to the cask
  url "https://github.com/buchen/portfolio/releases/download/#{version}/PortfolioPerformance-#{version}.dmg"
  appcast 'https://github.com/buchen/portfolio/releases.atom'
  name 'Portfolio Performance'
  homepage 'https://www.portfolio-performance.info/portfolio/'

  auto_updates true

  app 'PortfolioPerformance.app'

  caveats do
    depends_on_java '8+'
  end
end
