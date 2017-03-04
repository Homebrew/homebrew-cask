cask 'synology-assistant' do
  version '6.0-7319'
  sha256 '8ac000d51671b7d1293d449f496e66ba029a1c7e537610ca65778239e4edcb70'

  url "https://global.download.synology.com/download/Tools/Assistant/#{version}/Mac/Synology-Assistant-#{version}.dmg"
  name 'Synology Assistant'
  homepage 'https://www.synology.com/'

  app 'Synology Assistant.app'

  zap delete: '~/Library/Preferences/com.synology.DSAssistant.plist'
end
