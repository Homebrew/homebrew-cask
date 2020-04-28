cask 'anki' do
  version '2.1.24'
  sha256 '7d18c0ce0ec33f889f4024230404ca7a18321c89ec39c45d47fab85812881b65'

  # github.com/ankitects/anki/ was verified as official when first introduced to the cask
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
