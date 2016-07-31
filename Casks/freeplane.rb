cask 'freeplane' do
  version '1.5.13'
  sha256 '15205e49b3d4f2e45f4bd4ae859df955783632dbe96737e69b5ae44960df705b'

  url "https://downloads.sourceforge.net/freeplane/freeplane%20stable/freeplane_app-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/freeplane/rss',
          checkpoint: '3bd1c60ddc9c38e2db38adbe8d55cf133a62b2f34deaf2681a9c958a4b8f5d82'
  name 'Freeplane'
  homepage 'http://freeplane.sourceforge.net/'
  license :gpl

  app 'Freeplane.app'
end
