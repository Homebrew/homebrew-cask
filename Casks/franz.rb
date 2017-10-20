cask 'franz' do
  version '5.0.0-beta.10'
  sha256 'fffddeb031652571d0075c27e37e96f7fbfa55eff2f3a7a0c2b9a799b8dded0f'

  # github.com/meetfranz/franz was verified as official when first introduced to the cask
  url "https://github.com/meetfranz/franz/releases/download/v#{version}/franz-#{version}.dmg"
  appcast 'https://github.com/meetfranz/franz/releases.atom',
          checkpoint: '83bdc442a2b68708b8b1ec95b244b95e6aabe94968075a6d6693ba44ae1cc1a2'
  name 'Franz'
  homepage 'https://meetfranz.com/'

  app 'Franz.app'
end
