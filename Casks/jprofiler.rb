cask 'jprofiler' do
  version '10.0.2'
  sha256 '1f30ede5e5babe6c2a5f409936c031f76f20f1d3b9ad5492808df31489b77f06'

  url "https://download-keycdn.ej-technologies.com/jprofiler/jprofiler_macos_#{version.dots_to_underscores}.dmg"
  appcast 'http://feeds.ej-technologies.com/jprofiler',
          checkpoint: '9c52a48e88f3189ff64ec3fae53efd98bd2feec1c70ae0afdffceedd76bc480c'
  name 'JProfiler'
  homepage 'https://www.ej-technologies.com/products/jprofiler/overview.html'

  app 'JProfiler.app'
end
