cask 'dbglass' do
  version '0.1.0-beta.6'
  sha256 'f79f853299f7578f3b30a9df9b2d027ec73ecf933b91f78e287ad2993176f45d'

  # github.com/web-pal/DBGlass was verified as official when first introduced to the cask
  url "https://github.com/web-pal/DBGlass/releases/download/v#{version}/MAC_OS-X.zip"
  appcast 'https://github.com/web-pal/dbglass/releases.atom',
          checkpoint: 'a28d989443a0b8b0e8f59fbb0a6f906ca567fb9cafaf651cda99f12f316839ba'
  name 'DBGlass'
  homepage 'http://dbglass.web-pal.com/'

  app 'DBGlass-darwin-x64/DBGlass.app'
end
