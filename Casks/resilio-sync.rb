cask 'resilio-sync' do
  version '2.7.1'
  sha256 'ac17763ded34445e52ad958279631707ad91604d8fa7a8ff225286c4b43124f5'

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
