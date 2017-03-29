cask 'jprofiler' do
  version '10.0'
  sha256 '53f811a9c4c56ee06bf4cdf9772f881f2e7137a7c8d10826f5b421ec843e028a'

  url "https://download-keycdn.ej-technologies.com/jprofiler/jprofiler_macos_#{version.dots_to_underscores}.dmg"
  appcast 'http://feeds.ej-technologies.com/jprofiler',
          checkpoint: '097bd5efcfa3a0da9391fc18b41d842a5c5f30745609ee3035aa33e582a8431b'
  name 'JProfiler'
  homepage 'https://www.ej-technologies.com/products/jprofiler/overview.html'

  app 'JProfiler.app'
end
