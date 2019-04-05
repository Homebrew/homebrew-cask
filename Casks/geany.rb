cask 'geany' do
  version '1.34.1'
  sha256 'a00361cef315f8291e05655124bdfb6397e8b9e55613a3e04287727dbd22f029'

  url "https://download.geany.org/geany-#{version}_osx.dmg"
  appcast 'https://github.com/geany/geany/releases.atom'
  name 'Geany'
  homepage 'https://www.geany.org/'

  app 'Geany.app'
end
