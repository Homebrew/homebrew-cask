cask 'outline' do
  version '3.23.0'
  sha256 '7597f3274ddbde6d44823a91b4a81129cfb1c94da31b4a0b543853fa93a9a3de'

  url "http://static.outline.ws/versions/Outline_#{version}.zip"
  appcast 'https://gorillized.s3.amazonaws.com/versions/update_channel.xml'
  name 'Outline'
  homepage 'http://outline.ws/'

  app 'Outline.app'
end
