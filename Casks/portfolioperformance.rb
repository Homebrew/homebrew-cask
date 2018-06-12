cask 'portfolioperformance' do
  version '0.32.0'
  sha256 'f8eec0df57404110b479d908b73c94289aebfbe9e1ea27ae960ad1c47a6159b2'

  # bintray.com/buchen/downloads was verified as official when first introduced to the cask
  url "https://bintray.com/buchen/downloads/download_file?file_path=#{version}%2FPortfolioPerformance-#{version}-macosx.cocoa.x86_64.tar.gz"
  appcast 'https://github.com/buchen/portfolio/releases.atom',
          checkpoint: '9d654b422d7407562378780a06649e7a083af02a77096190dbfc0bfc43b4924e'
  name 'Portfolio Performance'
  homepage 'http://www.portfolio-performance.info/portfolio/'

  auto_updates true

  app 'PortfolioPerformance.app'

  caveats do
    depends_on_java '8+'
  end
end
