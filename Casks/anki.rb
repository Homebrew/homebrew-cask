cask 'anki' do
  version '2.1.23'
  sha256 '7dbe282f81ef20645479b750c0f2cde4c8f81d7752ca89262c10710533978389'

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
