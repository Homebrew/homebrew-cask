cask 'synology-assistant' do
  version '6.1-15030'
  sha256 '534ea2de08744fa8ae9a1bac99ffe40219f14d5f6d3df8a207a3032c53a49bbe'

  url "https://global.download.synology.com/download/Tools/Assistant/#{version}/Mac/synology-assistant-#{version}.dmg"
  name 'Synology Assistant'
  homepage 'https://www.synology.com/'

  app 'Synology Assistant.app'

  zap delete: '~/Library/Preferences/com.synology.DSAssistant.plist'
end
