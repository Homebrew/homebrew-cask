cask 'jprofiler' do
  version '11.0.1'
  sha256 '90603680c12f94c19db9dc7a30b3dc9cd6e2451a6b7ece7c4679174bb8d82b6f'

  url "https://download-keycdn.ej-technologies.com/jprofiler/jprofiler_macos_#{version.dots_to_underscores}.dmg"
  appcast 'https://www.ej-technologies.com/feeds/jprofiler/'
  name 'JProfiler'
  homepage 'https://www.ej-technologies.com/products/jprofiler/overview.html'

  app 'JProfiler.app'
end
