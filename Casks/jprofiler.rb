cask 'jprofiler' do
  version '11.0.1'
  sha256 '7eae79230fed77efc178231b1f6d6cf6e5551907758bf757e27d7a9a997ed740'

  url "https://download-keycdn.ej-technologies.com/jprofiler/jprofiler_macos_#{version.dots_to_underscores}.dmg"
  appcast 'https://www.ej-technologies.com/feeds/jprofiler/'
  name 'JProfiler'
  homepage 'https://www.ej-technologies.com/products/jprofiler/overview.html'

  app 'JProfiler.app'
end
