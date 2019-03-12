cask 'anki' do
  version '2.1.11'
  sha256 '8ec56b3537ad946c9b3b76b163b2416fa4362da1f9c914eaa7e13849feb8672d'

  url "https://apps.ankiweb.net/downloads/current/anki-#{version}-mac.dmg"
  appcast 'https://apps.ankiweb.net/docs/changes.html'
  name 'Anki'
  homepage 'https://apps.ankiweb.net/'

  depends_on macos: '>= :sierra'

  app 'Anki.app'
end
