cask 'optimage' do
  version '3.1.0'
  sha256 'd877e7ab9817c2aeedda1cc2563f3aa4e190442c1b7d21c8754bca1a01442b15'

  url 'https://getoptimage.com/download/optimage-mac.zip'
  appcast 'https://getoptimage.com/appcast.xml'
  name 'Optimage'
  homepage 'https://getoptimage.com/'

  auto_updates true

  app 'Optimage.app'
end
