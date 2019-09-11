cask 'geany' do
  version '1.35'
  sha256 '84fb174cfd4f1ed1c1c6873bc2f09565a2dc7a0ec917800cb053aee9b8ed4227'

  url "https://download.geany.org/geany-#{version}_osx.dmg"
  appcast 'https://github.com/geany/geany/releases.atom'
  name 'Geany'
  homepage 'https://www.geany.org/'

  app 'Geany.app'
end
