cask 'simple-sync' do
  version '3.1.1-265'
  sha256 '81477b8c7b06fd3bd63b20033a5e2b383c54026b2dcaa7cb731c833a4fe21807'

  # roomieremote.com is the official download host per the vendor homepage
  url "https://www.roomieremote.com/b/SimpleSync-#{version.no_dots}.zip"
  appcast 'https://www.roomieremote.com/b/Simple-SyncAppcast.xml',
          checkpoint: 'd3549933d7ea5b37b1710863330a6b0d4e5bd83a6be90d03dd5a2a6e4393bc19'
  name 'Simple Sync'
  homepage 'https://simplecontrol.com/simple-sync'
  license :commercial

  app 'Simple Sync.app'

  zap delete: [
                '~/Library/Application Support/Roomie Agent',
                '~/Library/Preferences/com.roomie.agent.plist',
              ]
end
