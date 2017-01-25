cask 'configure-application-dock-tile' do
  version '1.0'
  sha256 '064f5c24ad7e26aa80c9c82b7c6049d96cd7396d53035fb4276fa638dc7d28c5'

  url "http://boredzo.org/cadt/Configure_Application_Dock_Tile-#{version}.zip"
  appcast 'http://boredzo.org/cadt/',
          checkpoint: 'b486472e79b032115cc1556546ef20b9a6d24d6e43e9ca19c026ce59e09fe43d'
  name 'Configure Application Dock Tile'
  name 'CADT'
  homepage 'http://boredzo.org/cadt/'

  app "Configure Application Dock Tile #{version}/Configure Application Dock Tile.app"
end
