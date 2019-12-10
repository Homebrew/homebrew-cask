cask 'macgamestore' do
  version '4.0.1,6063'
  sha256 'a9b56e50bd8ca6aac3c6285e1d97ba0c99e1815660a987930eb7a0f2b9d295cc'

  url "https://www.macgamestore.com/api_clientapp/clientupdates/public/core6/MacGameStore_#{version.before_comma}_#{version.after_comma}.tgz"
  appcast 'https://www.macgamestore.com/api_clientapp/clientupdates/public/update.xml'
  name 'MacGameStore'
  homepage 'https://www.macgamestore.com/app/'

  app 'MacGameStore.app'

  zap trash: [
               '~/Library/Application Support/MacGameStore.com',
               '/Applications/MacGameStore',
             ]
end
