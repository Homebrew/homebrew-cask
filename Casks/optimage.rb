cask 'optimage' do
  version '3.1.1'
  sha256 'd84c5e2cd96787892c9556e8bd40bfd5e7754c296c4cd6848809ce3817f1c7ad'

  url 'https://optimage.app/download/optimage-mac.zip'
  appcast 'https://optimage.app/appcast.xml'
  name 'Optimage'
  homepage 'https://optimage.app/'

  auto_updates true

  app 'Optimage.app'
end
