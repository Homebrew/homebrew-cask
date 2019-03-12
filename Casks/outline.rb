cask 'outline' do
  version '3.21.5'
  sha256 '0c8137bb7f668d44e860d1fb968051738f2d610ebbe2ce551daa55aeed7a7f9e'

  url "http://static.outline.ws/versions/Outline_#{version}.zip"
  appcast 'https://gorillized.s3.amazonaws.com/versions/update_channel.xml'
  name 'Outline'
  homepage 'http://outline.ws/'

  app 'Outline.app'
end
