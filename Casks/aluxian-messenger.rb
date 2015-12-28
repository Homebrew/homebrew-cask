cask 'aluxian-messenger' do
  version '1.4.3'
  sha256 'a187cd9e704b8a6333ec7fef736b9838a04a7d983d6e35c7fb782235d59bb492'

  url "https://github.com/Aluxian/Facebook-Messenger-Desktop/releases/download/v#{version}/Messenger.dmg"
  appcast 'https://github.com/Aluxian/Facebook-Messenger-Desktop/releases.atom',
          :sha256 => '6bb7e2550d9aa55a8d7dbe828a9e9b8f8444a236734107be8eebe6c1b25ea0e3'
  name 'Messenger'
  homepage 'http://messengerfordesktop.com/'
  license :oss

  app 'Messenger.app'

  zap :delete => [
                  '~/Library/Preferences/com.aluxian.messengerfordesktop.plist',
                  '~/Library/Application Support/Messenger/',
                  '~/Library/Saved Application State/com.aluxian.messengerfordesktop.savedState/'
                 ]
end
