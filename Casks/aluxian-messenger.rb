cask :v1 => 'aluxian-messenger' do
  version '1.4.3'
  sha256 'a187cd9e704b8a6333ec7fef736b9838a04a7d983d6e35c7fb782235d59bb492'

  url "https://github.com/Aluxian/Facebook-Messenger-Desktop/releases/download/v#{version}/Messenger.dmg"
  appcast 'https://github.com/Aluxian/Facebook-Messenger-Desktop/releases.atom'
  name 'Messenger'
  homepage 'http://messengerfordesktop.com/'
  license :oss

  app 'Messenger.app'
end
