cask 'fmod-studio' do
  version '11000'
  sha256 '9f5b01faef024e35fe7d69107f59dd0517ce0397b1da20d24d1eef464c8ed7bf'

  url "https://www.fmod.org/download/fmodstudio/tool/Mac/fmodstudio#{version}mac-installer.dmg"
  name 'FMOD Studio'
  homepage 'https://www.fmod.org/hub-page/products/'

  app 'FMOD Studio/FMOD Studio.app'
end
