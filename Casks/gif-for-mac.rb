cask 'gif-for-mac' do
  version :latest
  sha256 :no_check

  # cloudfront.net is the official download host per the vendor homepage
  url 'https://d309cd6updicdi.cloudfront.net/mac/bin/GIFforMac.dmg'
  name 'GIF for Mac'
  homepage 'https://www.riffsy.com/Mac'
  license :gratis

  app 'GIF for Mac.app'
end
