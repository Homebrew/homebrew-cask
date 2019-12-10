cask 'geany' do
  version '1.36'
  sha256 'cdd3feb6209e96efcc1302423f3f7d915274966d20969eed9fc6496aef53b034'

  url "https://download.geany.org/geany-#{version}_osx.dmg"
  appcast 'https://github.com/geany/geany/releases.atom'
  name 'Geany'
  homepage 'https://www.geany.org/'

  app 'Geany.app'
end
