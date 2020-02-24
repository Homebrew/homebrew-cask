cask 'resilio-sync' do
  version '2.6.4'
  sha256 'bc1d762720073de706e28124bd35c6804a430c464ae955826b358d240b819e0e'

  url "https://download-cdn.resilio.com/#{version}/osx/Resilio-Sync.dmg"
  appcast "https://help.resilio.com/hc/en-us/articles/206216855-Sync-#{version.major}-x-change-log"
  name 'Resilio Sync'
  homepage 'https://www.resilio.com/'

  auto_updates true

  app 'Resilio Sync.app'
end
