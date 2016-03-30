cask 'simple-sync' do
  version '3.3.1-308'
  sha256 'c805dc62582bbdc7b09b419b055404b04bf39770c82c8f9e4a22fe76d3bb950d'

  # roomieremote.com is the official download host per the vendor homepage
  url "https://www.roomieremote.com/b/SimpleSync-#{version.no_dots}.zip"
  appcast 'https://www.roomieremote.com/b/Simple-SyncAppcast.xml',
          checkpoint: '03e16ba9fd6f6adf9fc0013f077aaf6100a42ba1362e6eb22f699442756bab36'
  name 'Simple Sync'
  homepage 'https://simplecontrol.com/simple-sync'
  license :commercial

  app 'Simple Sync.app'

  zap delete: [
                '~/Library/Application Support/Roomie Agent',
                '~/Library/Preferences/com.roomie.agent.plist',
              ]
end
