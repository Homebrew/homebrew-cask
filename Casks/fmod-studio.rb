cask 'fmod-studio' do
  version '10610'
  sha256 'c31511f0751f334a7a52ce0006b9f6d85c7d556a049e9eb3725a6dd1388c000e'

  url "https://www.fmod.org/download/fmodstudio/tool/Mac/fmodstudio#{version}mac-installer.dmg"
  name 'FMOD Studio'
  homepage 'https://www.fmod.org/hub-page/products/'

  app 'FMOD Studio/FMOD Studio.app'
end
