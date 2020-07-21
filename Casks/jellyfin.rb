cask 'jellyfin' do
  version '10.6.0'
  sha256 '42cb7ce3813ba1d2f2f0bd7694dfd59aaf812e4357d0418680a17168f1bad6aa'

  url "https://repo.jellyfin.org/releases/server/macos/stable/combined/Jellyfin_#{version}.dmg"
  appcast 'https://repo.jellyfin.org/releases/server/macos/stable/'
  name 'Jellyfin'
  homepage 'https://jellyfin.org/'

  app 'Jellyfin.app'
end
