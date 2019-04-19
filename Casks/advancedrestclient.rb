cask 'advancedrestclient' do
  version '13.0.5'
  sha256 '7dd41b3967a02b4615d778220d9644339f98d38f74a2175480ab3f40c3d7f942'

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
