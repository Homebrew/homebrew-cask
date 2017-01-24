cask 'fluxcenter' do
  version '1.2.4.44994'
  sha256 'bdc036d665898263ea062336f928f61ae946cb745b6b3ca19f5acd2d3054f59a'

  # files.flux.to was verified as official when first introduced to the cask
  url "http://files.flux.to/files/Center/MacOS/Flux_FluxCenter_MacOSX_Installer_(#{version}).dmg"
  name 'FluxCenter'
  homepage 'https://www.fluxhome.com/'

  app 'FluxCenter.app'
end
