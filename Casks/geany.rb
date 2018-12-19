cask 'geany' do
  version '1.34'
  sha256 '15636ba493084d7b8ac3938ec0f5c9649e07759ffe08859761af762c2231f98e'

  url "https://download.geany.org/geany-#{version}_osx.dmg"
  appcast 'https://github.com/geany/geany/releases.atom'
  name 'Geany'
  homepage 'https://www.geany.org/'

  depends_on macos: '>= :lion'

  app 'Geany.app'
end
