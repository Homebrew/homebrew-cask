cask 'simple-sync' do
  version '3.0.1-232'
  sha256 'afb31f53f92dc4187a0cc91542561aa006870d5e5f906eae70b4be0a406c8f1d'

  # roomieremote.com is the official download host per the vendor homepage
  url "https://www.roomieremote.com/b/SimpleSync-#{version.delete('.')}.zip"
  appcast 'https://www.roomieremote.com/b/Simple-SyncAppcast.xml',
          :sha256 => '3968102cbd303c83db82ef0a73170e0891d5ff681996f94b69c8c80120659d51'
  name 'Simple Sync'
  homepage 'https://simplecontrol.com/simple-sync'
  license :commercial

  app 'Simple Sync.app'

  zap :delete => [
                   '~/Library/Application Support/Roomie Agent',
                   '~/Library/Preferences/com.roomie.agent.plist',
                 ]
end
