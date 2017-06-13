cask 'fluxcenter' do
  version '1.2.6.45795'
  sha256 'bc731374b2317e3046c73a7e64d6e48d898a6aa501ffe30ff8eb54875ab0f0ff'

  # files.flux.to was verified as official when first introduced to the cask
  url "http://files.flux.to/files/Center/MacOS/Flux_FluxCenter_MacOSX_Installer_(#{version}).dmg"
  name 'FluxCenter'
  homepage 'http://www.fluxhome.com/'

  app 'FluxCenter.app'
end
