cask 'anki' do
  version '2.1.2'
  sha256 'be728bdcf0e2cfcead6dfc3e487736ed725b455475865177654b654dc76a03d7'

  url "https://apps.ankiweb.net/downloads/current/anki-#{version}-mac.dmg"
  appcast 'https://apps.ankiweb.net/docs/changes.html'
  name 'Anki'
  homepage 'https://apps.ankiweb.net/'

  depends_on macos: '>= :yosemite'

  app 'Anki.app'
end
