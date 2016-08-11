cask 'franz' do
  version '3.1.1'
  sha256 '9b931a40082a7ce75ef8a8f7e55cd8d893ade7229293b8c582a67cdb5577f274'

  # github.com/imprecision/franz-app was verified as official when first introduced to the cask
  url "https://github.com/imprecision/franz-app/releases/download/#{version}/Franz-darwin-x64-#{version}.dmg"
  appcast 'https://github.com/imprecision/franz-app/releases.atom',
          checkpoint: '4aa666aa2f8c24598a5c17d9f2c91ccf517a6fa5c3ede5b6a8d88e4a954357b1'
  name 'Franz'
  homepage 'http://meetfranz.com'
  license :gratis

  app 'Franz.app'
end
