cask 'advancedrestclient' do
  version '13.0.6'
  sha256 'f5c851323730f0b9301e4e9087ea85074ae308dfebbfcbe70b7c1aba8ebd8364'

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
