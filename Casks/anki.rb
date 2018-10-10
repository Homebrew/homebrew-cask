cask 'anki' do
  version '2.1.5'
  sha256 'a239f97cb7ea052e8c58083e67c77d53c4610c1b838c6b5e8226caddddd24031'

  url "https://apps.ankiweb.net/downloads/current/anki-#{version}-mac.dmg"
  appcast 'https://apps.ankiweb.net/docs/changes.html'
  name 'Anki'
  homepage 'https://apps.ankiweb.net/'

  depends_on macos: '>= :yosemite'

  app 'Anki.app'
end
