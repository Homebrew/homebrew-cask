cask 'anki' do
  version '2.1.4'
  sha256 '328c42acc9a320ee0ce4ab8a8139130f2f4a2b4804ac13a3881cfcc1fe0cf86f'

  url "https://apps.ankiweb.net/downloads/current/anki-#{version}-mac.dmg"
  appcast 'https://apps.ankiweb.net/docs/changes.html'
  name 'Anki'
  homepage 'https://apps.ankiweb.net/'

  depends_on macos: '>= :yosemite'

  app 'Anki.app'
end
