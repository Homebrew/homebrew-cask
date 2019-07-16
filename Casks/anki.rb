cask 'anki' do
  version '2.1.14'
  sha256 '1d2d7fdcfcd26288805250f8c08b19a6e53463165aff834d4740f3560ed63f76'

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
