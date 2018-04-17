cask 'rrootage' do
  version '0.23.7'
  sha256 '466bec698ba02a38601e9de3e98373aea08e2f35ff7341cd0df35355cc03c134'

  url "https://workram.com/downloads/rRootage-for-OS-X-#{version}.dmg"
  appcast 'https://workram.com/games/rrootage/',
          checkpoint: 'bff3bb593af08b78927a1cad933ab466927a6196eb2ea08e8ef443231365f5f0'
  name 'rRootage'
  homepage 'https://workram.com/games/rrootage/'

  app 'rRootage.app'
end
