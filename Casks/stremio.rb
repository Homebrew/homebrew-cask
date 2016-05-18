cask 'stremio' do
  version '3.5.9'
  sha256 'eae503c5c93b09bc19ce363f28dc055127ab0f76c1faa1a5a9d741de885ae527'

  url "http://dl.strem.io/Stremio%20#{version}.dmg"
  name 'Stremio'
  homepage 'http://www.strem.io/'
  license :gratis

  app 'Stremio.app'
end
