cask 'jprofiler' do
  version '10.1.2'
  sha256 '147d6a981c725a7935292cff5c9ed89074a5665550332d6522c492ecbe1f5342'

  url "https://download-keycdn.ej-technologies.com/jprofiler/jprofiler_macos_#{version.dots_to_underscores}.dmg"
  appcast 'http://feeds.ej-technologies.com/jprofiler'
  name 'JProfiler'
  homepage 'https://www.ej-technologies.com/products/jprofiler/overview.html'

  app 'JProfiler.app'
end
