cask 'resilio-sync' do
  version '2.7.0'
  sha256 'ea7b33283c6993c1d6f2ed3e75ba5743bf014b3a19351f5cfeb6dddd8f8cb842'

  url "https://download-cdn.resilio.com/#{version}/osx/Resilio-Sync.dmg"
  appcast "https://help.resilio.com/hc/en-us/articles/206216855-Sync-#{version.major}-x-change-log"
  name 'Resilio Sync'
  homepage 'https://www.resilio.com/'

  auto_updates true

  app 'Resilio Sync.app'

  uninstall quit: 'com.resilio.Sync'

  zap trash: [
               '~/Library/Application Scripts/com.resilio.Sync.FinderExtension',
               '~/Library/Application Support/Resilio Sync',
               '~/Library/Caches/com.resilio.Sync',
               '~/Library/Containers/com.resilio.Sync.FinderExtension',
               '~/Library/Group Containers/group.com.resilio.Sync',
               '~/Library/Preferences/com.resilio.Sync.plist',
             ]
end
