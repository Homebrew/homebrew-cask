cask 'resilio-sync' do
  version :latest
  sha256 :no_check

  url 'https://download-cdn.getsync.com/stable/osx/Resilio-Sync.dmg'
  name 'Resilio Sync'
  homepage 'https://www.getsync.com/'
  license :gratis

  app 'Resilio Sync.app'
end
