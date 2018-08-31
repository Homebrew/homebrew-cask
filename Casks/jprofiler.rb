cask 'jprofiler' do
  version '10.1.2'
  sha256 '49a6e4afb5c4725616770ff47111e041adef9d6a16fa5e11b4ddb845caf47e74'

  url "https://download-keycdn.ej-technologies.com/jprofiler/jprofiler_macos_#{version.dots_to_underscores}.dmg"
  appcast 'http://feeds.ej-technologies.com/jprofiler'
  name 'JProfiler'
  homepage 'https://www.ej-technologies.com/products/jprofiler/overview.html'

  app 'JProfiler.app'
end
