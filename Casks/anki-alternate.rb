cask 'anki-alternate' do
  version '2.1.21'
  sha256 'aa3eed6db882ccb45ebb5bd1d2a286a15aed99b544bfd60a1b7a8fef5e7ea470'

  # github.com was verified as official when first introduced to the cask
  url "https://github.com/ankitects/anki/releases/download/#{version}/anki-#{version}-mac-alternate.dmg"
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
