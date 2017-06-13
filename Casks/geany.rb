cask 'geany' do
  version '1.30.1'
  sha256 '499fb2200dff408b2b94e7564086509386ff912a47f1090eef1e83c025f972e3'

  url "https://download.geany.org/geany-#{version}_osx.dmg"
  appcast 'https://github.com/geany/geany/releases.atom',
          checkpoint: '1e0c199a9ce1279101ad962cc31de94cdfb91a60206f24e15dcc557f7fa6a35d'
  name 'Geany'
  homepage 'https://www.geany.org/'

  depends_on macos: '>= :lion'

  app 'Geany.app'
end
