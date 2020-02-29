cask 'outline' do
  version '3.22.0'
  sha256 '17ca1633a6b1a66f8e2f2eba708129f7b7be4239a1a585ee7e2738de00e14dc1'

  url "http://static.outline.ws/versions/Outline_#{version}.zip"
  appcast 'https://gorillized.s3.amazonaws.com/versions/update_channel.xml'
  name 'Outline'
  homepage 'http://outline.ws/'

  app 'Outline.app'
end
