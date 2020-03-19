cask 'macgamestore' do
  version '4.0.4,6069'
  sha256 'f405a4e6d57d843432770f0abcd28196c0e7f5c72992b483a0141ba93aa05ba6'

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
