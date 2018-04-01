cask 'fluxcenter' do
  version '1.2.11.47267'
  sha256 '6a3e9ef041c99ffbf2fa3674bc49769511a3200e27c6522c2a305a8088e6d6e5'

  # files.flux.to was verified as official when first introduced to the cask
  url "http://files.flux.to/files/Center/MacOS/Flux_FluxCenter_MacOS_Installer_(#{version}).dmg"
  name 'FluxCenter'
  homepage 'http://www.fluxhome.com/'

  app 'FluxCenter.app'
end
