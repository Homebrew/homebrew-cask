cask 'resilio-sync' do
  version :latest
  sha256 :no_check

  url 'https://download-cdn.resilio.com/stable/osx/Resilio-Sync.dmg'
  name 'Resilio Sync'
  homepage 'https://www.resilio.com/'

  app 'Resilio Sync.app'
end
