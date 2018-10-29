cask 'configure-application-dock-tile' do
  version '1.0'
  sha256 '064f5c24ad7e26aa80c9c82b7c6049d96cd7396d53035fb4276fa638dc7d28c5'

  url "https://boredzo.org/cadt/Configure_Application_Dock_Tile-#{version}.zip"
  appcast 'https://boredzo.org/cadt/'
  name 'Configure Application Dock Tile'
  name 'CADT'
  homepage 'https://boredzo.org/cadt/'

  app "Configure Application Dock Tile #{version}/Configure Application Dock Tile.app"
end
