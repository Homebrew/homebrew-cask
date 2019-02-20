cask 'macgamestore' do
  version '3.4.0,5093'
  sha256 'bcea63ea0c34aa823340a2d03d8eb30b650a613c987202fa1fab40bfbfb1f32f'

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
