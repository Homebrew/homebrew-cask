cask 'optimage' do
  version '3.2.0'
  sha256 'b8fbad014b475b9bba5fd4f1053fb0b5e44a639ca1d43a37b0a9adb86e7c326b'

  url 'https://optimage.app/download/optimage-mac.zip'
  appcast 'https://optimage.app/appcast.xml'
  name 'Optimage'
  homepage 'https://optimage.app/'

  auto_updates true

  app 'Optimage.app'
end
