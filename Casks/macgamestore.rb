cask 'macgamestore' do
  version '3.3.21'
  sha256 '8086a0643e646f407537e1497a9152dd3747044c12fbf8f2c6ac08dc48913a52'

  url 'https://www.macgamestore.com/api_clientapp/clientupdates/public/core5/MacGameStore.dmg'
  appcast 'https://www.macgamestore.com/api_clientapp/clientupdates/public/update.xml'
  name 'MacGameStore'
  homepage 'https://www.macgamestore.com/app/'

  app 'MacGameStore.app'

  zap trash: [
               '~/Library/Application Support/MacGameStore.com',
               '/Applications/MacGameStore',
             ]
end
