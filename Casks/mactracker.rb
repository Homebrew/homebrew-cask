cask 'mactracker' do
  version '7.9.3'
  sha256 'c7b387abe08907910eb1d059dcd29f031027383ee4d54f8b3a4e9dfb9d9f090b'

  url "https://www.mactracker.ca/downloads/Mactracker_#{version}.zip"
  appcast 'https://update.mactracker.ca/appcast-b.xml'
  name 'Mactracker'
  homepage 'https://mactracker.ca/'

  auto_updates true

  app 'Mactracker.app'
end
