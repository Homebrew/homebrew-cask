cask 'anki' do
  version '2.1.22'
  sha256 '9cca7358c31025cb24bc20e4d7b91b05df8e4273e2882e89d92e82b6f5a5cde8'

  # github.com/ankitects/anki was verified as official when first introduced to the cask
  url "https://github.com/ankitects/anki/releases/download/#{version}/anki-#{version}-mac.dmg"
  appcast 'https://changes.ankiweb.net/README.md'
  name 'Anki'
  homepage 'https://apps.ankiweb.net/'

  depends_on macos: '>= :sierra'

  app 'Anki.app'

  zap trash: [
               '~/Library/Application Support/Anki',
               '~/Library/Application Support/Anki2',
             ]
end
