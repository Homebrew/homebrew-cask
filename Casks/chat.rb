cask :v1 => 'chat' do
  version :latest
  sha256 :no_check

  # devmate.com is the official download host per the vendor homepage
  url 'http://dl.devmate.com/com.perma.chat/Chat.zip'
  appcast 'http://updateinfo.devmate.com/com.perma.chat/updates.xml',
          :sha256 => '8009a30326218077e451fc3e3096eb37c7eaa1c667d32f5beccdece99c6c8a4b'
  name 'Chat'
  homepage 'https://chatformac.com/'
  license :gratis

  app 'Chat.app'
end
