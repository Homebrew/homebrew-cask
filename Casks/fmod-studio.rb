cask 'fmod-studio' do
  version '10904'
  sha256 '0e29d7eb50a189dd30e07b6e038238cb2e490fcd072ec3f851ce406656fd411a'

  url "https://www.fmod.org/download/fmodstudio/tool/Mac/fmodstudio#{version}mac-installer.dmg"
  name 'FMOD Studio'
  homepage 'https://www.fmod.org/hub-page/products/'

  app 'FMOD Studio/FMOD Studio.app'
end
