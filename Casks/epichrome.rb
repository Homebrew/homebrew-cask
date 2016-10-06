cask 'epichrome' do
  version '2.1.12'
  sha256 '3f0a39576cc1ca5f211346a3dfdcacfd1e87cd43a121e17c02baf585d9fade80'

  url "https://github.com/dmarmor/epichrome/releases/download/v#{version}/epichrome-#{version}.dmg"
  appcast 'https://github.com/dmarmor/epichrome/releases.atom',
          checkpoint: '60d7434a8f8762ed4d846778c9d9e6fc6964ac77bb2ac19786841dcfc3af983d'
  name 'Epichrome'
  homepage 'https://github.com/dmarmor/epichrome'
  license :gpl

  app 'Epichrome.app'
end
