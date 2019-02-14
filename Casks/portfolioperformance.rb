cask 'portfolioperformance' do
  version '0.38.1'
  sha256 'b0381f159a9feeff66d13a1e11105c1f46faf772f9b1f25659f03c66c2cbacb2'

  # bintray.com/buchen/downloads was verified as official when first introduced to the cask
  url "https://bintray.com/buchen/downloads/download_file?file_path=#{version}%2FPortfolioPerformance-distro-#{version}-macosx.cocoa.x86_64.tar.gz"
  appcast 'https://github.com/buchen/portfolio/releases.atom'
  name 'Portfolio Performance'
  homepage 'https://www.portfolio-performance.info/portfolio/'

  auto_updates true

  app 'PortfolioPerformance.app'

  caveats do
    depends_on_java '8+'
  end
end
