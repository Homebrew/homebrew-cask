cask 'macgamestore' do
  version '3.4.4,5098'
  sha256 'd85ac0e3b3c367c7529c5b6a11f47a96fb06a8477237b745c11bcfac7b63f026'

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
