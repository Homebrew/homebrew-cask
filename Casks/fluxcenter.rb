cask 'fluxcenter' do
  version '1.2.3.44498'
  sha256 '034d1da03515c23d2cf9d03873bc16f4e73658ed926fc24e33eec051b6398859'

  # files.flux.to was verified as official when first introduced to the cask
  url "http://files.flux.to/files/Center/MacOS/Flux_FluxCenter_MacOSX_Installer_(#{version}).dmg"
  name 'FluxCenter'
  homepage 'http://www.fluxhome.com/'

  app 'FluxCenter.app'
end
