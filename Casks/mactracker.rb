cask 'mactracker' do
  version '7.7.7'
  sha256 '3e45cfded9dcad0e4704d3de57c43c7e160ddaaabd4932462db31ddf694e3588'

  url "https://www.mactracker.ca/downloads/Mactracker_#{version}.zip"
  appcast 'https://update.mactracker.ca/appcast-b.xml'
  name 'Mactracker'
  homepage 'https://mactracker.ca/'

  auto_updates true

  app 'Mactracker.app'
end
