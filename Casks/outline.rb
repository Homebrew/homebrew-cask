cask 'outline' do
  version '3.24.0'
  sha256 'cb796869054f5fb6407737eeb9299c0110598e8f7e514a0a24fccd3c82647344'

  url "http://static.outline.ws/versions/Outline_#{version}.zip"
  appcast 'https://gorillized.s3.amazonaws.com/versions/update_channel.xml'
  name 'Outline'
  homepage 'http://outline.ws/'

  app 'Outline.app'
end
