cask 'anki' do
  version '2.1.10'
  sha256 '9bf132c9a04d08aeb53505984f3ba597222d0c3a39d3fdef79e0756d4e7506ca'

  url "https://apps.ankiweb.net/downloads/current/anki-#{version}-mac.dmg"
  appcast 'https://apps.ankiweb.net/docs/changes.html'
  name 'Anki'
  homepage 'https://apps.ankiweb.net/'

  depends_on macos: '>= :sierra'

  app 'Anki.app'
end
