cask 'jprofiler' do
  version '10.1.1'
  sha256 '9ce74b86e3112d71667fb366a5587faba543045c2ab8a9aca7f9e3bb4d99bbf2'

  url "https://download-keycdn.ej-technologies.com/jprofiler/jprofiler_macos_#{version.dots_to_underscores}.dmg"
  appcast 'http://feeds.ej-technologies.com/jprofiler',
          checkpoint: 'df96165fbc15d9f0e6b151022b495506d9ec3c587bd69ef8abc940b4ef14f20c'
  name 'JProfiler'
  homepage 'https://www.ej-technologies.com/products/jprofiler/overview.html'

  app 'JProfiler.app'
end
