cask 'jprofiler' do
  version '10.0.2'
  sha256 'b4518d8728c0b17ca1b7da2a56a487b058bafd74985918e55c0f024a38e5a3c1'

  url "https://download-keycdn.ej-technologies.com/jprofiler/jprofiler_macos_#{version.dots_to_underscores}.dmg"
  appcast 'http://feeds.ej-technologies.com/jprofiler',
          checkpoint: '9c52a48e88f3189ff64ec3fae53efd98bd2feec1c70ae0afdffceedd76bc480c'
  name 'JProfiler'
  homepage 'https://www.ej-technologies.com/products/jprofiler/overview.html'

  app 'JProfiler.app'
end
