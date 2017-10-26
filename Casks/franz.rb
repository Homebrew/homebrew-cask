cask 'franz' do
  version '5.0.0-beta.11'
  sha256 'de714f924a1366a6c75bf3accc6f3b4cb4f75210cf20f1bff99b0780aca8b5bf'

  # github.com/meetfranz/franz was verified as official when first introduced to the cask
  url "https://github.com/meetfranz/franz/releases/download/v#{version}/franz-#{version}.dmg"
  appcast 'https://github.com/meetfranz/franz/releases.atom',
          checkpoint: '01b0c3c1e89ea7aacbc594d8c95df7d6d3a8b4838e44aecb44c32da5ec4f08c4'
  name 'Franz'
  homepage 'https://meetfranz.com/'

  app 'Franz.app'
end
