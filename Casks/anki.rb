cask 'anki' do
  version '2.0.46'
  sha256 'f8b01ea1c8a186d9c9e2b6e0dd231faa9e6d8c7c82bc8d83d4fe204303c90bdb'

  url "https://apps.ankiweb.net/downloads/current/anki-#{version}.dmg"
  appcast 'https://apps.ankiweb.net/docs/changes.html',
          checkpoint: '0ffc313ec328fdaea8ab43e7ab2c57502d2fd80e7d8fd31beaaff70e8f7e3d4f'
  name 'Anki'
  homepage 'https://apps.ankiweb.net/'

  depends_on macos: '>= :lion'

  app 'Anki.app'
end
