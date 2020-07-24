cask 'outline' do
  version '3.24.3'
  sha256 'cb9056b1440064e951a0c31eaa9540e73edacdd870e1b15d3678f054d329e69a'

  url "http://static.outline.ws/versions/Outline_#{version}.zip"
  appcast 'https://gorillized.s3.amazonaws.com/versions/update_channel.xml'
  name 'Outline'
  homepage 'http://outline.ws/'

  app 'Outline.app'
end
