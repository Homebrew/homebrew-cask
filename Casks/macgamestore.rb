cask 'macgamestore' do
  version :latest
  sha256 :no_check

  url 'https://www.macgamestore.com/api_clientapp/clientupdates/public/core5/MacGameStore.dmg'
  name 'MacGameStore'
  homepage 'https://www.macgamestore.com/app/'

  app 'MacGameStore.app'

  zap trash: '~/Library/Application Support/MacGameStore.com'
end
