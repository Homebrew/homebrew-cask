cask 'freeplane' do
  version '1.5.13'
  sha256 '15205e49b3d4f2e45f4bd4ae859df955783632dbe96737e69b5ae44960df705b'

  url "https://downloads.sourceforge.net/freeplane/freeplane%20stable/freeplane_app-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/freeplane/rss?path=/freeplane%20stable',
          checkpoint: '60fc48e1bc2033f5862ffb60ff689372bc9409406f254a39bb966ab833ee719a'
  name 'Freeplane'
  homepage 'http://freeplane.sourceforge.net/'

  app 'Freeplane.app'
end
