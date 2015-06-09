cask :v1 => 'aluxian-messenger' do
  version '1.4.0'
  sha256 'cd29d15312435952d6dba2bf65421d910a4c4f866c036e2b1f3beb3af626ac23'

  url "https://github.com/Aluxian/Facebook-Messenger-Desktop/releases/download/v#{version}/Messenger.dmg"
  name 'Messenger'
  homepage 'http://messengerfordesktop.com/'
  license :oss

  app 'Messenger.app'
end
