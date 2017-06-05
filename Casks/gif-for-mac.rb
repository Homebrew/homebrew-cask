cask 'gif-for-mac' do
  version :latest
  sha256 :no_check

  # media.tenor.co/mac/bin was verified as official when first introduced to the cask
  url 'https://media.tenor.co/mac/bin/GIFforMac.dmg'
  name 'GIF for Mac'
  homepage 'https://tenor.com/mac'

  app 'GIF for Mac.app'
end
