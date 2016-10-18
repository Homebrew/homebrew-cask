cask 'chat' do
  version '1.0.3-1429112097'
  sha256 '430028e75c0a01ae2f8cad9b3b2bb64ae30893c5fc4ce524b5c5dd3a9413c123'

  # devmate.com/com.perma.chat was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.perma.chat/#{version.sub(%r{-.*$}, '')}/#{version.sub(%r{.*?-}, '')}/Chat-#{version.sub(%r{-.*$}, '')}.zip"
  appcast 'http://updateinfo.devmate.com/com.perma.chat/updates.xml',
          checkpoint: 'd6f08b16a849fac36038aff4d15fa764f0e71ba531992c3770b9347d39a4dc48'
  name 'Chat'
  homepage 'https://chatformac.com/'

  app 'Chat.app'
end
