cask 'jprofiler' do
  version '10.1.5'
  sha256 '2efd82af381240196ac4571070bfa6ed764b1589068b995f12dfb97bc2aeac26'

  url "https://download-keycdn.ej-technologies.com/jprofiler/jprofiler_macos_#{version.dots_to_underscores}.dmg"
  appcast 'https://www.ej-technologies.com/feeds/jprofiler/'
  name 'JProfiler'
  homepage 'https://www.ej-technologies.com/products/jprofiler/overview.html'

  app 'JProfiler.app'
end
