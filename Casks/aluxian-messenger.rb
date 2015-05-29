cask :v1 => 'aluxian-messenger' do
  version '1.3.3'
  sha256 'e95f5009907134b190403af98e007b74bec65c8b147541b1307e34f669c01237'

  url "https://github.com/Aluxian/Facebook-Messenger-Desktop/releases/download/v#{version}/Messenger.dmg"
  name 'Messenger'
  homepage 'http://messengerfordesktop.com/'
  license :oss

  app 'Messenger.app'
end
