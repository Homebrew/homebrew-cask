cask 'stremio' do
  version '3.6.2'
  sha256 '1348304f7df32ae032b96809be7da8345755947078c9ba31fb60ff18166e9b79'

  url "https://dl.strem.io/Stremio%20#{version}.dmg"
  name 'Stremio'
  homepage 'https://www.strem.io/'
  license :gratis

  app 'Stremio.app'
end
