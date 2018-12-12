cask 'macgamestore' do
  version '3.3.22,5091'
  sha256 'b0aa27e6a89f6fc1104094871bf4f58a37c7dd017a94ed2209f5ec8b0f2e1908'

  url "https://www.macgamestore.com/api_clientapp/clientupdates/public/core5/MacGameStore_#{version.before_comma}_#{version.after_comma}.tgz"
  appcast 'https://www.macgamestore.com/api_clientapp/clientupdates/public/update.xml'
  name 'MacGameStore'
  homepage 'https://www.macgamestore.com/app/'

  app 'MacGameStore.app'

  zap trash: [
               '~/Library/Application Support/MacGameStore.com',
               '/Applications/MacGameStore',
             ]
end
