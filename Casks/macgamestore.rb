cask 'macgamestore' do
  version '4.1.0,6071'
  sha256 'c857d558ed24f921e78eb381477b8b425daef7fa4c5cc8dc71e91f1b187c7f70'

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
