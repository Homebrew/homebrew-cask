cask 'anki' do
  version '2.0.52'
  sha256 '468814d16ad3146e5551e5a7c5c2fff7f0f0301c1c7dc5fdaa8a049732e054c9'

  url "https://apps.ankiweb.net/downloads/current/anki-#{version}.dmg"
  appcast 'https://apps.ankiweb.net/docs/changes.html',
          checkpoint: 'fb44d6a18a4d4e75b6936196b6443447df27202872a5a7aaf5ecb89321bc8473'
  name 'Anki'
  homepage 'https://apps.ankiweb.net/'

  depends_on macos: '>= :lion'

  app 'Anki.app'
end
