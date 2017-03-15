cask 'jprofiler' do
  version '10.0'
  sha256 'f83b50119de83bd19da2903f75cc127f50e5351d75313c9d14b620d46341def5'

  url "https://download-keycdn.ej-technologies.com/jprofiler/jprofiler_macos_#{version.dots_to_underscores}.dmg"
  appcast 'http://feeds.ej-technologies.com/jprofiler',
          checkpoint: '097bd5efcfa3a0da9391fc18b41d842a5c5f30745609ee3035aa33e582a8431b'
  name 'JProfiler'
  homepage 'https://www.ej-technologies.com/products/jprofiler/overview.html'

  app 'JProfiler.app'
end
