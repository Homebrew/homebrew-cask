cask 'fmod-studio' do
  version '10905'
  sha256 'c19958b654a058370701b5bd31498029883c5c695062cd9bb2f5662079e964b5'

  url "https://www.fmod.org/download/fmodstudio/tool/Mac/fmodstudio#{version}mac-installer.dmg"
  name 'FMOD Studio'
  homepage 'https://www.fmod.org/hub-page/products/'

  app 'FMOD Studio/FMOD Studio.app'
end
