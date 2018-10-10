cask 'mactracker' do
  version '7.7.5'
  sha256 'd5c335830f9526ad4554e0cae56f31c1b00276b2dd081ac69ccf044763f69e00'

  url "https://www.mactracker.ca/downloads/Mactracker_#{version}.zip"
  appcast 'https://update.mactracker.ca/appcast-b.xml'
  name 'Mactracker'
  homepage 'https://mactracker.ca/'

  auto_updates true

  app 'Mactracker.app'
end
