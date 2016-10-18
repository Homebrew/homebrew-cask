cask 'fluxcenter' do
  version '1.1.15.43404'
  sha256 '4d884fc23aa9b21959c63ba43009886bd618b38e817c1c121f1477961c22fde2'

  # files.flux.to was verified as official when first introduced to the cask
  url "http://files.flux.to/files/Center/MacOS/Flux_FluxCenter_MacOSX_Installer_(#{version}).dmg"
  name 'FluxCenter'
  homepage 'https://www.fluxhome.com/'

  app 'FluxCenter.app'
end
