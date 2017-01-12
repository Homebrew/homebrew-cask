cask 'rrootage' do
  version '0.23.7'
  sha256 '466bec698ba02a38601e9de3e98373aea08e2f35ff7341cd0df35355cc03c134'

  url "https://workram.com/downloads/rRootage-for-OS-X-#{version}.dmg"
  appcast 'https://workram.com/games/rrootage/',
          checkpoint: '6168fdabbe02f823c92e0abe52216ecccb3d7fdbcc2815032f18b13fe516c6ff'
  name 'rRootage'
  homepage 'https://workram.com/games/rrootage/'

  app 'rRootage.app'
end
