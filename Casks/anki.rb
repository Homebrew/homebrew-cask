cask 'anki' do
  version '2.1.3'
  sha256 'eb4acf6eeda2817b15533418b2b2d3b3cfc622e212cbe62e0f24de51b96be5fb'

  url "https://apps.ankiweb.net/downloads/current/anki-#{version}-mac.dmg"
  appcast 'https://apps.ankiweb.net/docs/changes.html'
  name 'Anki'
  homepage 'https://apps.ankiweb.net/'

  depends_on macos: '>= :yosemite'

  app 'Anki.app'
end
