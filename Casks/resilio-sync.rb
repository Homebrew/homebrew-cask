cask 'resilio-sync' do
  version '2.5.12'
  sha256 'f6c7a0b0e0b11399cbe5f3250b4067293d0c8a80b8a5ea3a938476e7923b0dba'

  url "https://download-cdn.resilio.com/#{version}/osx/Resilio-Sync.dmg"
  name 'Resilio Sync'
  homepage 'https://www.resilio.com/'

  auto_updates true

  app 'Resilio Sync.app'
end
