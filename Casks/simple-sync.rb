cask 'simple-sync' do
  version '3.1.1-265'
  sha256 '81477b8c7b06fd3bd63b20033a5e2b383c54026b2dcaa7cb731c833a4fe21807'

  # roomieremote.com is the official download host per the vendor homepage
  url "https://www.roomieremote.com/b/SimpleSync-#{version.no_dots}.zip"
  appcast 'https://www.roomieremote.com/b/Simple-SyncAppcast.xml',
          :sha256 => '4ddb0eb4bfd6a5d65b26579fd27d5958beb2bbed090899ce3770fdd6f69bf4e6'
  name 'Simple Sync'
  homepage 'https://simplecontrol.com/simple-sync'
  license :commercial

  app 'Simple Sync.app'

  zap :delete => [
                   '~/Library/Application Support/Roomie Agent',
                   '~/Library/Preferences/com.roomie.agent.plist',
                 ]
end
