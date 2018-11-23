cask 'resilio-sync' do
  version '2.6.2'
  sha256 'cac9f20c6e9e0553b139676687220343fab601220ed20bf11ac627d0f8a62087'

  url "https://download-cdn.resilio.com/#{version}/osx/Resilio-Sync.dmg"
  name 'Resilio Sync'
  homepage 'https://www.resilio.com/'

  auto_updates true

  app 'Resilio Sync.app'
end
