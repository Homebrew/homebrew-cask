cask 'synology-chat' do
  version '1.1.0-56'
  sha256 '2335cb1aa1918bd9efb19a28bc58e95282bdbd1bf63b6d017f188175347d82b4'

  url "https://global.download.synology.com/download/Tools/ChatClient/#{version}/Mac/Installer/Chat-#{version}.dmg"
  name 'Synology Chat'
  homepage 'https://www.synology.com/en-us/dsm/feature/chat'

  app 'Synology Chat.app'
end
