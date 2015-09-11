cask :v1 => 'chat' do
  version '1.0.3-1429112097'
  sha256 '430028e75c0a01ae2f8cad9b3b2bb64ae30893c5fc4ce524b5c5dd3a9413c123'

  # devmate.com is the official download host per the appcast feed
  url "http://dl.devmate.com/com.perma.chat/#{version.sub(%r{-.*$},'')}/#{version.sub(%r{.*?-},'')}/Chat-#{version.sub(%r{-.*$},'')}.zip"
  appcast 'http://updateinfo.devmate.com/com.perma.chat/updates.xml',
          :sha256 => '8009a30326218077e451fc3e3096eb37c7eaa1c667d32f5beccdece99c6c8a4b'
  name 'Chat'
  homepage 'https://chatformac.com/'
  license :gratis

  app 'Chat.app'
end
