cask 'anki' do
  version '2.1.1'
  sha256 'e7aa033b76943bd73958723546c4c7f335801147d3d832e230ddffcf67352535'

  url "https://apps.ankiweb.net/downloads/current/anki-#{version}-mac.dmg"
  appcast 'https://apps.ankiweb.net/docs/changes.html'
  name 'Anki'
  homepage 'https://apps.ankiweb.net/'

  depends_on macos: '>= :yosemite'

  app 'Anki.app'
end
