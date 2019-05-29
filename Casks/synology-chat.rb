cask 'synology-chat' do
  version '1.0.1-40'
  sha256 '8318abf563972c4c986fc7bb42f1c739e31e8f6d97fa896641ea293e2bd1f8fe'

  url "https://global.download.synology.com/download/Tools/ChatClient/#{version}/Mac/Installer/Chat-#{version}.dmg"
  name 'Synology Chat'
  homepage 'https://www.synology.com/en-us/dsm/feature/chat'

  app 'Synology Chat.app'
end
