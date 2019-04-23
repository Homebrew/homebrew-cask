cask 'anki' do
  version '2.1.12'
  sha256 'f0f2a36fd2c8fc7f52ed047ccf3ceae6fc65fc6207bda9e64ac2141bc1cc3726'

  url "https://apps.ankiweb.net/downloads/current/anki-#{version}-mac.dmg"
  appcast 'https://apps.ankiweb.net/docs/changes.html'
  name 'Anki'
  homepage 'https://apps.ankiweb.net/'

  depends_on macos: '>= :sierra'

  app 'Anki.app'
end
