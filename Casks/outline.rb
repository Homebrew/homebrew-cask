cask 'outline' do
  version '3.23.1'
  sha256 'cd41a98975ca6349f9c12053cde2b0e4f4727c9936558cb9558a6ab5a5ebfe09'

  url "http://static.outline.ws/versions/Outline_#{version}.zip"
  appcast 'https://gorillized.s3.amazonaws.com/versions/update_channel.xml'
  name 'Outline'
  homepage 'http://outline.ws/'

  app 'Outline.app'
end
