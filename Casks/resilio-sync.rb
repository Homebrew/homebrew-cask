cask 'resilio-sync' do
  version '2.5.13'
  sha256 'd6ffd3027713e7dc73cce92110dfd0650644051dfda67d889e8becaf083e8460'

  url "https://download-cdn.resilio.com/#{version}/osx/Resilio-Sync.dmg"
  name 'Resilio Sync'
  homepage 'https://www.resilio.com/'

  auto_updates true

  app 'Resilio Sync.app'
end
