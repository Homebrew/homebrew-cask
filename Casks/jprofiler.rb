cask 'jprofiler' do
  version '9.2'
  sha256 'ddefef4e84183da862a1a2a469170cd5972a6d26cb5126479a26d2b6f903e78d'

  url "https://download-keycdn.ej-technologies.com/jprofiler/jprofiler_macos_#{version.dots_to_underscores}.dmg"
  name 'JProfiler'
  homepage 'https://www.ej-technologies.com/products/jprofiler/overview.html'

  app 'JProfiler.app'
end
