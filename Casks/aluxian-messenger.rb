cask :v1 => 'aluxian-messenger' do
  version '1.1.0'
  sha256 '35c6325049af1d3752e02420b893987ee699aa394dc866d0c6aac2a57e6ab541'

  url "https://github.com/Aluxian/Facebook-Messenger-Desktop/releases/download/v#{version}/messenger_osx64.zip"
  name 'Messenger'
  homepage 'http://messengerfordesktop.com/'
  license :oss

  app 'Messenger.app'
end
