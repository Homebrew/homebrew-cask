cask 'jprofiler' do
  version '9.2.1'
  sha256 'e5a596e460f401689bba599a54628ef6fc1c596e6dd8955e7fd2c2dfa49581ec'

  url "https://download-keycdn.ej-technologies.com/jprofiler/jprofiler_macos_#{version.dots_to_underscores}.dmg"
  appcast 'http://feeds.ej-technologies.com/jprofiler',
          checkpoint: '25d1c58866f9121f05b1a6933947cd4915b75bb226d492fc72eed8b25415eaaf'
  name 'JProfiler'
  homepage 'https://www.ej-technologies.com/products/jprofiler/overview.html'

  app 'JProfiler.app'
end
