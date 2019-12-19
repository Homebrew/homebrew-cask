cask 'optimage' do
  version '3.3.0'
  sha256 '55db5eafaf9c66bda6a0b3d0c135ad71af233c6dcd92314ac75a4be3b816aa97'

  url 'https://optimage.app/download/optimage-mac.zip'
  appcast 'https://optimage.app/appcast.xml'
  name 'Optimage'
  homepage 'https://optimage.app/'

  auto_updates true

  app 'Optimage.app'
  binary "#{appdir}/Optimage.app/Contents/MacOS/cli/optimage"
end
