cask 'optimage' do
  version '3.0.0'
  sha256 'a175c845ece7ed8d7ea2ca24894b646194f44fa4154740e414b7572a8a72fdfd'

  url 'https://getoptimage.com/download/optimage-mac.zip'
  appcast 'https://getoptimage.com/appcast.xml'
  name 'Optimage'
  homepage 'https://getoptimage.com/'

  auto_updates true

  app 'Optimage.app'
end
