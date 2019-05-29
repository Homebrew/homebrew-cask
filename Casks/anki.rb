cask 'anki' do
  version '2.1.13'
  sha256 '4af6677fd49036a52888488a9b4dd1ecd84551c56628cda2c2226fe4e9d3ec31'

  url "https://apps.ankiweb.net/downloads/current/anki-#{version}-mac.dmg"
  appcast 'https://apps.ankiweb.net/docs/changes.html'
  name 'Anki'
  homepage 'https://apps.ankiweb.net/'

  depends_on macos: '>= :sierra'

  app 'Anki.app'
end
