cask 'optimage' do
  version '3.2.1'
  sha256 '98501fff3f3ca4f3b137ca3043adfdbc68d5ed7ea9e2faca01459e4284c6cca0'

  url 'https://optimage.app/download/optimage-mac.zip'
  appcast 'https://optimage.app/appcast.xml'
  name 'Optimage'
  homepage 'https://optimage.app/'

  auto_updates true

  app 'Optimage.app'
end
