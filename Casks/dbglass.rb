cask 'dbglass' do
  version 'v0.1.0-beta.6'
  sha256 'f79f853299f7578f3b30a9df9b2d027ec73ecf933b91f78e287ad2993176f45d'

  # github.com/web-pal/DBGlass was verified as official when first introduced to the cask
  url "https://github.com/web-pal/DBGlass/releases/download/#{version}/MAC_OS-X.zip"
  appcast 'https://github.com/web-pal/dbglass/releases.atom',
          checkpoint: '8db209134c537d898b9fe48062b87cc65628568055266b3211b959b149877f1d'
  name 'DBGlass'
  homepage 'http://dbglass.web-pal.com'

  app 'DBGlass-darwin-x64/DBGlass.app'
end
