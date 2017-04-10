cask 'acousticbrainz-gui' do
  version '0.1'
  sha256 'eafba5110d0ca6b39119a0dae0cefc8f38d9e58c679145da5c1b903e193301c6'

  url "https://acousticbrainz.org/static/download/acousticbrainz-gui-osx-#{version}.dmg"
  name 'AcousticBrainz'
  homepage 'https://acousticbrainz.org/'

  app 'acousticbrainz-gui.app'
end
