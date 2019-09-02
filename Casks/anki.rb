cask 'anki' do
  version '2.1.15'
  sha256 '0e4a38930984aee1ff8f6bdf7c81b2a08c78d159592fd304a1e173270de19a50'

  url "https://apps.ankiweb.net/downloads/current/anki-#{version}-mac.dmg"
  appcast 'https://apps.ankiweb.net/docs/changes.html'
  name 'Anki'
  homepage 'https://apps.ankiweb.net/'

  depends_on macos: '>= :sierra'

  app 'Anki.app'

  zap trash: [
               '~/Library/Application Support/Anki',
               '~/Library/Application Support/Anki2',
             ]
end
