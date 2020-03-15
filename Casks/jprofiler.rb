cask 'jprofiler' do
  version '11.1.2'
  sha256 '6428b607ad163d9922f2c613dcecc8e48b23693eaed4db1da77ea58a15449e07'

  url "https://download-gcdn.ej-technologies.com/jprofiler/jprofiler_macos_#{version.dots_to_underscores}.dmg"
  appcast 'https://www.ej-technologies.com/feeds/jprofiler/'
  name 'JProfiler'
  homepage 'https://www.ej-technologies.com/products/jprofiler/overview.html'

  app 'JProfiler.app'
end
