cask 'resilio-sync' do
  version '2.6.3'
  sha256 '346f616375c07c684952cc0c915cf78635a73945d052614a6b2cb4f9c6e4d5a8'

  url "https://download-cdn.resilio.com/#{version}/osx/Resilio-Sync.dmg"
  appcast "https://help.resilio.com/hc/en-us/articles/206216855-Sync-#{version.major}-x-change-log"
  name 'Resilio Sync'
  homepage 'https://www.resilio.com/'

  auto_updates true

  app 'Resilio Sync.app'
end
