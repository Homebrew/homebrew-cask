cask 'resilio-sync' do
  version '2.6.4'
  sha256 '9a5c54c902745c67f1d6c108c5533f2387e532433d1914bd1c5379fabd922e3d'

  url "https://download-cdn.resilio.com/#{version}/osx/Resilio-Sync.dmg"
  appcast "https://help.resilio.com/hc/en-us/articles/206216855-Sync-#{version.major}-x-change-log"
  name 'Resilio Sync'
  homepage 'https://www.resilio.com/'

  auto_updates true

  app 'Resilio Sync.app'
end
