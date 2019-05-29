cask 'advancedrestclient' do
  version '13.0.7'
  sha256 '1abde754de131b3d2929036950bc363ceaa737abf140259a0938a026d5406c23'

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
