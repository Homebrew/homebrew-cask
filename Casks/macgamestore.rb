cask 'macgamestore' do
  version '3.4.2,5095'
  sha256 '8a2fc899fd87f8700d5d4fe6679e3af884163a0538e318cb5932e757bf006db9'

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
