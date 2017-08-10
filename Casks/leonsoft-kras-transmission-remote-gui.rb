cask 'leonsoft-kras-transmission-remote-gui' do
  version '5.8.3'
  sha256 '81de0a2d8b9c429094e2399a9ab3c73eec3a8baf756ad371a782782ec71e33f5'

  url "https://github.com/leonsoft-kras/transmisson-remote-gui/releases/download/v#{version}/transgui-#{version}.dmg"
  appcast 'https://github.com/leonsoft-kras/transmisson-remote-gui/releases.atom',
          checkpoint: 'e31df4f989aa69da74411612b84981d0056014490236fe6e120498ef51b96125'
  name 'Transmission Remote GUI'
  homepage 'https://github.com/leonsoft-kras/transmisson-remote-gui'

  app 'Transmission Remote GUI.app'
end
