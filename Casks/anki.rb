cask 'anki' do
  version '2.1.6'
  sha256 'f03866b906ac57a5e596696c8fc61547fef6d8639995eddbdc83bbef09d633e0'

  url "https://apps.ankiweb.net/downloads/current/anki-#{version}-mac.dmg"
  appcast 'https://apps.ankiweb.net/docs/changes.html'
  name 'Anki'
  homepage 'https://apps.ankiweb.net/'

  depends_on macos: '>= :sierra'

  app 'Anki.app'
end
