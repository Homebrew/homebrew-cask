cask 'anki' do
  version '2.1.7'
  sha256 '15d151bcfa9cac3fcfdecfffef203346e9eff522f2e23e61a3f41048ab7f077e'

  url "https://apps.ankiweb.net/downloads/current/anki-#{version}-mac.dmg"
  appcast 'https://apps.ankiweb.net/docs/changes.html'
  name 'Anki'
  homepage 'https://apps.ankiweb.net/'

  depends_on macos: '>= :sierra'

  app 'Anki.app'
end
