cask 'advancedrestclient' do
  version '15.0.6'
  sha256 'f3a6a955b7a77e2b11ce1ae76e4adc9c383ae074fd76e92eddb6014b3facb043'

  url "https://github.com/advanced-rest-client/arc-electron/releases/download/v#{version}/arc-#{version}.dmg"
  appcast 'https://github.com/advanced-rest-client/arc-electron/releases.atom'
  name 'Advanced Rest Client'
  homepage 'https://github.com/advanced-rest-client/arc-electron'

  app 'AdvancedRestClient.app'

  zap trash: [
               '~/Library/Application Support/advanced-rest-client',
               '~/Library/Logs/AdvancedRestClient',
             ]
end
