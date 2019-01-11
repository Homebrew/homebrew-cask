cask 'anki' do
  version '2.1.8'
  sha256 'eb0876f4dce044b82f402e1a803360fe0940822b2f45d0e39c7700cad65bdf95'

  url "https://apps.ankiweb.net/downloads/current/anki-#{version}-mac.dmg"
  appcast 'https://apps.ankiweb.net/docs/changes.html'
  name 'Anki'
  homepage 'https://apps.ankiweb.net/'

  depends_on macos: '>= :sierra'

  app 'Anki.app'
end
