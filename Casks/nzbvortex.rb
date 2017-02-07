cask 'nzbvortex' do
  version '3.3.10'
  sha256 '6bc125854ff18998af89521d8767c0dce4c142eeb1a5632122958c122cc3f670'

  url "https://www.nzbvortex.com/downloads/NZBVortex-#{version}.zip"
  appcast "https://www.nzbvortex.com/update/appcast_v#{version.major}.xml",
          checkpoint: '1155a2221f20f69a6dcf4d6e63653cb28e9c63a0d1cc27fde5aaee6df901b3d7'
  name 'NZBVortex'
  homepage 'https://www.nzbvortex.com/landing/'

  app "NZBVortex #{version.major}.app"
end
