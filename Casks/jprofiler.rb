cask 'jprofiler' do
  version '11.0'
  sha256 '51f206fbb9a44ea839558bd0aac2afd34ca0949c3cad9a2f6e7ab16ad9afef0c'

  url "https://download-keycdn.ej-technologies.com/jprofiler/jprofiler_macos_#{version.dots_to_underscores}.dmg"
  appcast 'https://www.ej-technologies.com/feeds/jprofiler/'
  name 'JProfiler'
  homepage 'https://www.ej-technologies.com/products/jprofiler/overview.html'

  app 'JProfiler.app'
end
