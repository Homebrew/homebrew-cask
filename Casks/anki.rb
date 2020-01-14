cask 'anki' do
  version '2.1.18'
  sha256 '8f957240b55d71de459a0544ee410f3c06562bc3d1b65430d3be24db8096a41e'

  url "https://apps.ankiweb.net/downloads/current/anki-#{version}-mac.dmg"
  appcast 'https://apps.ankiweb.net/docs/changes.html'
  name 'Anki'
  homepage 'https://apps.ankiweb.net/'

  depends_on macos: '>= :sierra'

  app 'Anki.app'

  zap trash: [
               '~/Library/Application Support/Anki',
               '~/Library/Application Support/Anki2',
             ]
end
