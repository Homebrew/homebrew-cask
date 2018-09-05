cask 'geany' do
  version '1.33'
  sha256 'bd6f12a1ca86019bd5dac6a0ee1abfeaacd12ff5f33abe38eeb028120206d336'

  url "https://download.geany.org/geany-#{version}_osx.dmg"
  appcast 'https://github.com/geany/geany/releases.atom'
  name 'Geany'
  homepage 'https://www.geany.org/'

  depends_on macos: '>= :lion'

  app 'Geany.app'
end
