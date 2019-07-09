cask 'macgamestore' do
  version '3.4.1,5094'
  sha256 '8e7f4de54c956d9ba77b76437bcd51dec9c6ca423d29621b690a6fa9d9a018d7'

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
