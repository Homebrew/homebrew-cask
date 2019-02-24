cask 'anki' do
  version '2.1.9'
  sha256 '1a720317ff13454b6f11bd4a106e3964ebc98db70e092d6e7b0927a270a01741'

  url "https://apps.ankiweb.net/downloads/current/anki-#{version}-mac.dmg"
  appcast 'https://apps.ankiweb.net/docs/changes.html'
  name 'Anki'
  homepage 'https://apps.ankiweb.net/'

  depends_on macos: '>= :sierra'

  app 'Anki.app'
end
