cask 'advancedrestclient' do
  version '13.0.4'
  sha256 '061499c9eac8deb9c27b27f68bbaba131ded696487833353b890291e65543f5a'

  # github.com/advanced-rest-client/arc-electron was verified as official when first introduced to the cask
  url "https://github.com/advanced-rest-client/arc-electron/releases/download/v#{version}/arc-#{version}.dmg"
  appcast 'https://github.com/advanced-rest-client/arc-electron/releases.atom'
  name 'Advanced Rest Client'
  homepage 'https://advancedrestclient.com/'

  app 'AdvancedRestClient.app'

  zap trash: [
               '~/Library/Application Support/advanced-rest-client',
               '~/Library/Logs/AdvancedRestClient',
             ]
end
